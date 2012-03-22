local TSM = select(2, ...)
local L = LibStub("AceLocale-3.0"):GetLocale("TradeSkillMaster_Auctioning") -- loads the localization table
local GUI = TSM:NewModule("GUI", "AceEvent-3.0", "AceHook-3.0")
local GUIUtil = TSMAPI:GetGUIFunctions()
local AceGUI = LibStub("AceGUI-3.0")
local private = {}

function GUI:OnInitialize()
	TSMAPI:RegisterAuctionFunction("TradeSkillMaster_Auctioning", private, L["Post Auctions"], L["Posts items on the auction house according to the rules setup in Auctioning."].."\n\n|cffff8888"..L["Right click to do a custom post scan."].."|r")
	TSMAPI:RegisterAuctionFunction("TradeSkillMaster_Auctioning", private, L["Cancel Auctions"], L["Cancels auctions you've been undercut on according to the rules setup in Auctioning."].."\n\n|cffff8888"..L["Right click to do a custom cancel scan."].."|r")
	TSMAPI:RegisterAuctionFunction("TradeSkillMaster_Auctioning", private, L["Reset Auctions"], L["Resets the price of items according to the rules setup in Auctioning by buying other's auctions and canceling your own as necessary."].."\n\n|cffff8888"..L["Right click to do a custom reset scan."].."|r")
end

function private:Show(frame, button, options)
	local mode = frame.modeText
	if mode == L["Post Auctions"] then
		if button == "LeftButton" then
			private.mode = "Post"
			private.isSpecial = false
		elseif button == "RightButton" then
			private.mode = "Post"
			private.isSpecial = true
		end
	elseif mode == L["Cancel Auctions"] then
		if button == "LeftButton" then
			private.mode = "Cancel"
			private.isSpecial = false
		elseif button == "RightButton" then
			private.mode = "Cancel"
			private.isSpecial = true
		end
	elseif mode == L["Reset Auctions"] then
		if button == "LeftButton" then
			private.mode = "Reset"
			private.isSpecial = false
		elseif button == "RightButton" then
			private.mode = "Reset"
			private.isSpecial = true
		end
	else
		return "invalid"
	end
	
	if private.isSpecial then
		private:PopulateGroups()
		private.specialFrame = private.specialFrame or private:CreateGroupSelectionScreen(frame.content)
		private.specialFrame:UpdateMode()
		private.specialFrame:Show()
		private.specialFrame.startButton:SetScript("OnClick", function()
				private:Hide()
				local groups = {}
				for _, data in pairs(private.groupSelection) do
					for groupName, isEnabled in pairs(data.groups) do
						groups[groupName] = isEnabled
					end
				end
				private:Show(frame, "LeftButton", {groups=groups})
			end)
		if private.mode == "Cancel" then
			private.specialFrame.cancelFrame.cancelAllButton:SetScript("OnClick", function()
					private:Hide()
					private:Show(frame, "LeftButton", {noScan=true, cancelAll=true})
				end)
			private.specialFrame.cancelFrame.durationCancelButton:SetScript("OnClick", function()
					private:Hide()
					private:Show(frame, "LeftButton", {noScan=true, cancelDuration=true})
				end)
			private.specialFrame.cancelFrame.filterCancelButton:SetScript("OnClick", function(self)
					private:Hide()
					private:Show(frame, "LeftButton", {noScan=true, cancelFilter=self.cancelFilter})
				end)
		end
		private:UpdateSelectionWidgets()
	else
		private.statusBar = private.statusBar or private:CreateStatusBar(frame.content)
		private.statusBar:Show()
		
		private.buttons = private.buttons or private:CreateButtons(frame)
		private.buttons:Show()
		private.buttons:UpdateMode()
		private.buttons:Disable()
		
		private.contentButtons = private.contentButtons or private:CreateContentButtons(frame)
		private.contentButtons:Show()
		private.contentButtons:UpdateMode()
		
		private.infoText = private.infoText or private:CreateInfoText(frame)
		private.infoText:Show()
		private.infoText:UpdateMode()
		
		private.auctionsST = private.auctionsST or private:CreateAuctionsST(frame.content)
		private.logST = private.logST or private:CreateLogST(frame.content)
		private.contentButtons.logButton:Click()
		private.auctionsST:SetData({})
		private.logST:SetData({})
		private.logST.cache = {}
		
		if private.mode == "Reset" then
			private.buttons:Hide()
			private.contentButtons:Hide()
			private.auctionsST:Hide()
			private.logST:Hide()
			TSM.Reset:Show(frame)
		end
		
		GUI:RegisterMessage("TSMAuc_QUERY_FINISHED", private.UpdateTables)
		GUI:RegisterMessage("TSMAuc_NEW_ITEM_DATA", private.UpdateTables)
		TSMAPI:StopScan()
		
		if private.mode == "Post" or private.mode == "Cancel" or private.mode == "Reset" then
			TSMAPI:CreateTimeDelay("aucStartDelay", 0.1, function() TSM:ValidateGroups(function() TSM.Manage:StartScan(private, options) end) end)
		else
			error("Invalid Mode", 2)
		end
	end
end

function private:Hide()
	if private.isSpecial then
		private.specialFrame:Hide()
	else
		private.auctionsST:SetData({})
		private.logST:SetData({})
		TSMAPI:StopScan()
		GUI:UnregisterAllMessages()
		TSM.Manage:UnregisterAllMessages()

		private.statusBar:Hide()
		private.buttons:Hide()
		private.contentButtons:Hide()
		private.infoText:Hide()
		private.auctionsST:Hide()
		private.logST:Hide()
		
		if private.mode == "Reset" then
			TSM.Reset:Hide()
		end
	end
end

function private:PopulateGroups()
	TSM:UpdateGroupReverseLookup()
	private.groupSelection = {}
	private.groupSelection[L["<Uncategorized Groups>"]] = {enabled=true, expanded=false, groups={}}	
	
	for categoryName, groups in pairs(TSM.db.profile.categories) do
		private.groupSelection[categoryName] = {enabled=true, expanded=false, groups={}}
	end
	
	for groupName in pairs(TSM.db.profile.groups) do
		if private.mode ~= "Reset" or TSM.Config:GetConfigValue(groupName, "resetEnabled", true) then
			local categoryName = TSM.groupReverseLookup[groupName] or L["<Uncategorized Groups>"]
			private.groupSelection[categoryName].groups[groupName] = true
			private.groupSelection[categoryName].hasAGroup = true
		end
	end
	
	local toRemove = {}
	for categoryName, categoryData in pairs(private.groupSelection) do
		if not categoryData.hasAGroup then
			tinsert(toRemove, categoryName)
		end
	end
	
	for _, name in ipairs(toRemove) do
		private.groupSelection[name] = nil
	end
end

function private:CreateGroupSelectionScreen(parent)
	local BUTTON_WIDTH = 200

	local frame = CreateFrame("Frame", nil, parent)
	frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8X8",
		tile = false,
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 24,
		insets = {left = 4, right = 4, top = 4, bottom = 4},
	})
	frame:SetBackdropColor(0, 0, 0.05, 1)
	frame:SetBackdropBorderColor(0,0,1,1)
	frame:SetAllPoints()
	frame:Show()
	
	frame.UpdateMode = function(self)
		if private.mode == "Cancel" then
			frame.cancelFrame:Show()
		else
			frame.cancelFrame:Hide()
		end
	end

	local sg = AceGUI:Create("TSMSimpleGroup")
	sg:SetLayout("fill")
	sg.frame:SetParent(frame)
	sg.frame:SetPoint("TOPLEFT", 6, -6)
	sg.frame:SetPoint("BOTTOMRIGHT", -220, 6)
	sg.frame:Show()
	frame.sg = sg
	
	GUIUtil:AddVerticalBar(frame, sg.frame:GetWidth() + 6)
	
	local controlFrame = CreateFrame("Frame", nil, frame)
	controlFrame:SetPoint("TOPLEFT", sg.frame:GetWidth() + 6, -4)
	controlFrame:SetPoint("BOTTOMRIGHT", -2, 4)
	frame.controlFrame = controlFrame
	
	local button = GUIUtil:CreateButton(frame, nil, "action", 0, "CENTER")
	button:SetPoint("TOPLEFT", 20, 25)
	button:SetHeight(20)
	button:SetWidth(150)
	button:SetText(L["Enable All"])
	button:SetScript("OnClick", function()
			for _, data in pairs(private.groupSelection) do
				data.enabled = true
				for group in pairs(data.groups) do
					data.groups[group] = true
				end
			end
			private:UpdateSelectionWidgets()
		end)
	frame.enableAll = button
	
	local button = GUIUtil:CreateButton(frame, nil, "action", 0, "CENTER")
	button:SetPoint("TOPLEFT", 220, 25)
	button:SetHeight(20)
	button:SetWidth(150)
	button:SetText(L["Disable All"])
	button:SetScript("OnClick", function()
			for _, data in pairs(private.groupSelection) do
				data.enabled = false
				for group in pairs(data.groups) do
					data.groups[group] = false
				end
			end
			private:UpdateSelectionWidgets()
		end)
	frame.disableAll = button
	
	local helpText = frame:CreateFontString()
	helpText:SetPoint("TOPLEFT", sg.frame, "TOPRIGHT", 8, -8)
	helpText:SetHeight(80)
	helpText:SetWidth(BUTTON_WIDTH)
	helpText:SetFont(GameFontNormal:GetFont(), 12)
	helpText:SetJustifyH("CENTER")
	helpText:SetJustifyV("TOP")
	helpText:SetTextColor(1, 1, 1, 1)
	helpText:SetText(L["Use the checkboxes to the left to select which groups you'd like to include in this scan."])
	frame.helpText = helpText
	
	local button = GUIUtil:CreateButton(frame, nil, "action", -1, "CENTER")
	button:SetPoint("TOPRIGHT", -10, -65)
	button:SetHeight(20)
	button:SetWidth(BUTTON_WIDTH)
	button:SetText(L["Start Scan of Selected Groups"])
	frame.startButton = button
	
	GUIUtil:AddHorizontalBar(controlFrame, -85)
	
	local cFrame = CreateFrame("Frame", nil, controlFrame)
	cFrame:SetAllPoints()
	frame.cancelFrame = cFrame
	
	local button = GUIUtil:CreateButton(cFrame, nil, "action", -1, "CENTER")
	button:SetPoint("TOPRIGHT", -10, -100)
	button:SetHeight(20)
	button:SetWidth(BUTTON_WIDTH)
	button:SetText(L["Cancel ALL Current Auctions"])
	cFrame.cancelAllButton = button
	
	GUIUtil:AddHorizontalBar(cFrame, -120)
	
	local eb = GUIUtil:CreateEditBox(cFrame, L["Cancel Filter"], BUTTON_WIDTH, {"TOPRIGHT", -10, -130}, L["Enter a filter into this box and click the button below it to cancel all of your auctions that contain that filter (without scanning)."])
	eb:SetCallback("OnEnterPressed", function(_,_,value) cFrame.filterCancelButton.cancelFilter = value end)
	
	local button = GUIUtil:CreateButton(cFrame, nil, "action", -1, "CENTER")
	button:SetPoint("TOPRIGHT", -10, -180)
	button:SetHeight(20)
	button:SetWidth(BUTTON_WIDTH)
	button:SetText(L["Cancel Auctions Matching Filter"])
	cFrame.filterCancelButton = button
	
	GUIUtil:AddHorizontalBar(cFrame, -205)
	
	local dd = GUIUtil:CreateDropdown(cFrame, L["Duration"], BUTTON_WIDTH, {L["Short (30 minutes)"], L["Medium (2 hours)"], L["Long (12 hours)"]}, {"TOPRIGHT", -10, -215}, L["All auctions of this duration and below will be canceled when you press the \"Cancel Low Duration Auctions\" button"])
	dd:SetValue(TSM.db.global.lowDuration)
	dd:SetCallback("OnValueChanged", function(_,_,value) TSM.db.global.lowDuration = value end)
	cFrame.durationCancelEditBox = dd
	
	local button = GUIUtil:CreateButton(cFrame, nil, "action", -1, "CENTER")
	button:SetPoint("TOPRIGHT", -10, -275)
	button:SetHeight(20)
	button:SetWidth(BUTTON_WIDTH)
	button:SetText(L["Cancel Low Duration Auctions"])
	cFrame.durationCancelButton = button
	
	return frame
end

function private:UpdateSelectionWidgets()
	local widgets = {}

	local function AddLineWidgets(name, categoryName, value)
		local checkBox = {
			type = "CheckBox",
			relativeWidth = categoryName and 0.89 or 0.95,
			height = 18,
			label = name,
			value = value,
		}
		
		if categoryName then
			checkBox.tooltip = L["Check this box to include this group in the scan."]
			checkBox.callback = function(self,_,val) private.groupSelection[categoryName].groups[name] = val end
			tinsert(widgets, {type="Label", text=" ", relativeWidth=0.1})
			tinsert(widgets, checkBox)
		else
			checkBox.tooltip = L["Toggle this box to enable / disable all groups in this category."]
			checkBox.callback = function(self,_,val)
					private.groupSelection[name].enabled = val
			
					if private.groupSelection[name].expanded then
						local index
						for i=1, #self.parent.children do
							if self.parent.children[i] == self then
								index = i + 3
								break
							end
						end
				
						for i=index, #self.parent.children do
							if self.parent.children[i].type == "TSMCheckBox" then
								self.parent.children[i].frame:GetScript("OnMouseUp")(self.parent.children[i].frame)
								if self.parent.children[i+1] and self.parent.children[i+1].type == "TSMCheckBox" then
									break
								end
							end
						end
					else
						for groupName in pairs(private.groupSelection[name].groups) do
							private.groupSelection[name].groups[groupName] = val
						end
					end
				end
			tinsert(widgets, checkBox)
			tinsert(widgets, {
					type = "Icon",
					image = private.groupSelection[name].expanded and "Interface\\Buttons\\UI-MinusButton-UP" or "Interface\\Buttons\\UI-PlusButton-UP",
					imageWidth = 16,
					imageHeight = 16,
					height = 18,
					relativeWidth = 0.04,
					callback = function()
							private.groupSelection[name].expanded = not private.groupSelection[name].expanded
							private:UpdateSelectionWidgets()
						end,
				})
		end
	end
	
	for categoryName, data in pairs(private.groupSelection) do
		AddLineWidgets(categoryName, nil, data.enabled)
		
		if data.expanded then
			for groupName, enabled in pairs(data.groups) do
				AddLineWidgets(groupName, categoryName, enabled)
			end
		end
	end
	
	if #widgets == 0 then
		local label = {
			type = "Label",
			relativeWidth = 1,
		}
	
		if private.mode == "Reset" then
			label.text = L["You don't any groups set to be included in a reset scan."]
		else
			label.text = L["You don't any groups set up."]
		end
		tinsert(widgets, label)
	end

	local page = {
		{
			type = "ScrollFrame",
			layout = "flow",
			children = widgets,
		},
	}
	
	private.specialFrame.sg:ReleaseChildren()
	TSMAPI:BuildPage(private.specialFrame.sg, page)
end

function private:CreateStatusBar(parent)
	local function UpdateStatus(self, majorStatus, minorStatus)
		if majorStatus then
			self.majorStatusBar:SetValue(majorStatus)
		end
		if minorStatus then
			self.minorStatusBar:SetValue(minorStatus)
		end
	end
	
	local function SetStatusText(self, text)
		self.text:SetText(text)
	end

	local level = parent:GetFrameLevel()
	local frame = CreateFrame("Frame", nil, parent)
	frame:SetHeight(30)
	frame:SetPoint("TOPLEFT", 0, -1)
	frame:SetPoint("TOPRIGHT", 0, -1)
	frame:SetFrameLevel(level+1)
	frame.UpdateStatus = UpdateStatus
	frame.SetStatusText = SetStatusText
	
	-- minor status bar (gray one)
	local statusBar = CreateFrame("STATUSBAR", "TSMAuctioningMinorStatusBar", frame, "TextStatusBar")
	statusBar:SetOrientation("HORIZONTAL")
	statusBar:SetMinMaxValues(0, 100)
	statusBar:SetPoint("TOPLEFT", 4, -4)
	statusBar:SetPoint("BOTTOMRIGHT", -4, 4)
	statusBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-TargetingFrame-BarFill")
	statusBar:SetStatusBarColor(0.85, 0.85, 1, 0.5)
	statusBar:SetFrameLevel(level+2)
	frame.minorStatusBar = statusBar
	
	-- major status bar (main blue one)
	local statusBar = CreateFrame("STATUSBAR", "TSMAuctioningMajorStatusBar", frame, "TextStatusBar")
	statusBar:SetOrientation("HORIZONTAL")
	statusBar:SetMinMaxValues(0, 100)
	statusBar:SetPoint("TOPLEFT", 4, -4)
	statusBar:SetPoint("BOTTOMRIGHT", -4, 4)
	statusBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-TargetingFrame-BarFill")
	statusBar:SetStatusBarColor(0.71, 0.71, 0.89, 0.9)
	statusBar:SetFrameLevel(level+3)
	frame.majorStatusBar = statusBar
	
	local textFrame = CreateFrame("Frame", nil, frame)
	textFrame:SetFrameLevel(level+4)
	textFrame:SetAllPoints(frame)
	-- Text for the StatusBar
	local tFile, tSize = GameFontNormal:GetFont()
	local text = textFrame:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	text:SetFont(tFile, tSize, "OUTLINE")
	text:SetPoint("CENTER")
	frame.text = text
	
	return frame
end

function private:CreateButtons(parent)
	local height = 24
	local frame, parent = TSMAPI:CreateSecureChild(parent)
	frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8X8",
		tile = false,
	})
	frame:SetBackdropColor(0.1, 0.1, 0.1, 0.4)
	frame:SetHeight(height)
	frame:SetWidth(324)
	frame:SetPoint("BOTTOMRIGHT", -86, 13)
	
	frame.Enable = function(self)
		if self.post:IsVisible() then
			self.post:Enable()
		elseif self.cancel:IsVisible() then
			self.cancel:Enable()
		end
		self.skip:Enable()
		self.stop:Enable()
	end
	
	frame.Disable = function(self)
		if self.post:IsVisible() then
			self.post:Disable()
		elseif self.cancel:IsVisible() then
			self.cancel:Disable()
		end
		self.skip:Disable()
	end
	
	frame.UpdateMode = function(self)
		if private.mode == "Post" then
			self.post:Show()
			self.cancel:Hide()
			self.cancel:Disable()
		elseif private.mode == "Cancel" then
			self.post:Hide()
			self.post:Disable()
			self.cancel:Show()
		end
		self.stop:Enable()
	end
	
	local function OnClick(self)
		if frame:IsVisible() and private.OnAction then
			private:OnAction(self.which)
		end
	end
	
	local button = GUIUtil:CreateButton(frame, "TSMAuctioningPostButton", "action2", 8, "CENTER")
	button:SetPoint("TOPLEFT", -5, 0)
	button:SetWidth(110)
	button:SetHeight(height)
	button:SetText(L["Post"])
	button.which = "action"
	button:SetScript("OnClick", OnClick)
	frame.post = button
	
	local button = GUIUtil:CreateButton(frame, "TSMAuctioningCancelButton", "action2", 8, "CENTER")
	button:SetPoint("TOPLEFT", -5, 0)
	button:SetWidth(110)
	button:SetHeight(height)
	button:SetText(L["Cancel"])
	button.which = "action"
	button:SetScript("OnClick", OnClick)
	frame.cancel = button
	
	local button = GUIUtil:CreateButton(frame, nil, "action2", 1, "CENTER")
	button:SetPoint("TOPLEFT", 110, 0)
	button:SetWidth(95)
	button:SetHeight(height)
	button:SetText(L["Skip Item"])
	button.which = "skip"
	button:SetScript("OnClick", OnClick)
	frame.skip = button
	
	local button = GUIUtil:CreateButton(frame, nil, "action2", 1, "CENTER")
	button:SetPoint("TOPLEFT", 210, 0)
	button:SetWidth(112)
	button:SetHeight(height)
	button:SetText(L["Stop Scan"])
	button.which = "stop"
	button:SetScript("OnClick", OnClick)
	frame.stop = button
	
	return frame
end

function private:CreateContentButtons(parent)
	local frame, parent = TSMAPI:CreateSecureChild(parent)
	frame:SetAllPoints(parent)
	
	frame.UpdateMode = function(self)
		if private.mode == "Post" then
			self.currAuctionsButton:Show()
			self.editPriceButton:Show()
			self.editPriceButton:Disable()
		elseif private.mode == "Cancel" then
			self.currAuctionsButton:Show()
			self.editPriceButton:Hide()
		end
	end
	
	frame.UnlockHighlight = function(self)
		self.auctionsButton:UnlockHighlight()
		self.logButton:UnlockHighlight()
		self.currAuctionsButton:UnlockHighlight()
		self.editPriceButton:UnlockHighlight()
	end
	
	local function OnClick(self)
		frame:UnlockHighlight()
		self:LockHighlight()
		frame.editPriceFrame:Hide()
		
		if self.which == "log" then
			private.auctionsST:Hide()
			private.logST:Show()
			private:UpdateLogSTData()
		elseif self.which == "auctions" then
			private.logST:Hide()
			private.auctionsST:Show()
			private.auctionsST.isCurrentItem = nil
			private:UpdateAuctionsSTData()
		elseif self.which == "currAuctions" then
			private.logST:Hide()
			private.auctionsST:Show()
			private.auctionsST.isCurrentItem = true
			private:UpdateAuctionsSTData()
		elseif self.which == "editPrice" then
			frame.editPriceFrame:Show()
		end
	end

	local auctionsButton = GUIUtil:CreateButton(frame, nil, "action", 1, "CENTER")
	auctionsButton:SetPoint("TOPRIGHT", -10, -50)
	auctionsButton:SetHeight(17)
	auctionsButton:SetWidth(150)
	auctionsButton.which = "auctions"
	auctionsButton:SetScript("OnClick", OnClick)
	auctionsButton:SetText(L["Show All Auctions"])
	frame.auctionsButton = auctionsButton
	
	local currAuctionsButton = GUIUtil:CreateButton(frame, nil, "action", 1, "CENTER")
	currAuctionsButton:SetPoint("TOPRIGHT", -170, -50)
	currAuctionsButton:SetHeight(17)
	currAuctionsButton:SetWidth(150)
	currAuctionsButton.which = "currAuctions"
	currAuctionsButton:SetScript("OnClick", OnClick)
	currAuctionsButton:SetText(L["Show Item Auctions"])
	frame.currAuctionsButton = currAuctionsButton
	
	local logButton = GUIUtil:CreateButton(frame, nil, "action", 1, "CENTER")
	logButton:SetPoint("TOPRIGHT", -10, -75)
	logButton:SetHeight(17)
	logButton:SetWidth(150)
	logButton.which = "log"
	logButton:SetScript("OnClick", OnClick)
	logButton:SetText(L["Show Log"])
	frame.logButton = logButton
	
	local editPriceButton = GUIUtil:CreateButton(frame, nil, "action", 1, "CENTER")
	editPriceButton:SetPoint("TOPRIGHT", -170, -75)
	editPriceButton:SetHeight(17)
	editPriceButton:SetWidth(150)
	editPriceButton.which = "editPrice"
	editPriceButton:SetScript("OnClick", OnClick)
	editPriceButton:SetText(L["Edit Post Price"])
	frame.editPriceButton = editPriceButton
	
	local editPriceFrame = CreateFrame("Frame", nil, frame)
	editPriceFrame:SetPoint("CENTER")
	editPriceFrame:SetFrameStrata("DIALOG")
	editPriceFrame:SetWidth(300)
	editPriceFrame:SetHeight(150)
	editPriceFrame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8X8",
		tile = false,
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		edgeSize = 24,
		insets = {left = 4, right = 4, top = 4, bottom = 4},
	})
	editPriceFrame:SetBackdropColor(0, 0, 0.05, 1)
	editPriceFrame:SetBackdropBorderColor(0,0,1,1)
	editPriceFrame:EnableMouse(true)
	editPriceFrame:SetScript("OnShow", function(self)
			editPriceFrame:SetFrameStrata("DIALOG")
			MoneyInputFrame_SetCopper(TSMPostPriceChangeBox, self.info.buyout)
			self.linkLabel:SetText(self.info.link)
		end)
	editPriceFrame:SetScript("OnUpdate", function()
			if not TSMAPI:AHTabIsVisible() then
				editPriceFrame:Hide()
			end
		end)
	frame.editPriceFrame = editPriceFrame
	
	local linkLabel = editPriceFrame:CreateFontString()
	linkLabel:SetFontObject(GameFontNormal)
	linkLabel:SetTextColor(1, 1, 1, 1)
	linkLabel:SetPoint("TOP", 0, -14)
	linkLabel:SetJustifyH("CENTER")
	linkLabel:SetText("")
	editPriceFrame.linkLabel = linkLabel
	
	local priceBoxLabel = editPriceFrame:CreateFontString()
	priceBoxLabel:SetFontObject(GameFontNormal)
	priceBoxLabel:SetTextColor(1, 1, 1, 1)
	priceBoxLabel:SetPoint("TOPLEFT", 14, -40)
	priceBoxLabel:SetText(L["Auction Buyout (Stack Price):"])
	editPriceFrame.priceBoxLabel = priceBoxLabel
	
	local priceBox = CreateFrame("Frame", "TSMPostPriceChangeBox", editPriceFrame, "MoneyInputFrameTemplate")
	priceBox:SetPoint("TOPLEFT", 20, -60)
	priceBox:SetHeight(20)
	priceBox:SetWidth(120)
	editPriceFrame.priceBox = priceBox
	
	local saveButton = GUIUtil:CreateButton(editPriceFrame, nil, "action", 1, "CENTER")
	saveButton:SetPoint("BOTTOMLEFT", 10, 10)
	saveButton:SetPoint("BOTTOMRIGHT", editPriceFrame, "BOTTOM", -2, 10)
	saveButton:SetHeight(20)
	saveButton:SetScript("OnClick", function()
			TSM.Post:EditPostPrice(editPriceFrame.info.itemString, MoneyInputFrame_GetCopper(TSMPostPriceChangeBox))
			TSM.Manage:UpdateGUI()
			editPriceFrame:Hide()
		end)
	saveButton:SetText(L["Save New Price"])
	editPriceFrame.saveButton = saveButton
	
	local cancelButton = GUIUtil:CreateButton(editPriceFrame, nil, "action", 1, "CENTER")
	cancelButton:SetPoint("BOTTOMLEFT", editPriceFrame, "BOTTOM", 2, 10)
	cancelButton:SetPoint("BOTTOMRIGHT", -10, 10)
	cancelButton:SetHeight(20)
	cancelButton:SetScript("OnClick", function()
			editPriceFrame:Hide()
		end)
	cancelButton:SetText(L["Cancel"])
	editPriceFrame.cancelButton = cancelButton
	
	GUIUtil:AddHorizontalBar(frame, -25, parent.content)
	
	return frame
end

function private:CreateInfoText(parent)
	local frame, parent = TSMAPI:CreateSecureChild(parent)
	frame:SetAllPoints()
	
	frame.SetInfo = function(self, item)
		if type(item) == "string" then
			self.icon:Hide()
			self.linkText:Hide()
			self.stackText:Hide()
			self.bidText:Hide()
			self.buyoutText:Hide()
			self.statusText:Show()
			self.quantityText:Hide()
			
			self.statusText:SetText(item)
		elseif item.isReset then
			self.icon:Show()
			self.linkText:Show()
			self.stackText:Show()
			self.bidText:Show()
			self.buyoutText:Show()
			self.statusText:Hide()
			
			local itemID = TSMAPI:GetItemID(item.itemString)
			local playerTotal, altTotal = TSMAPI:GetData("playertotal", itemID)
			local guildTotal = TSMAPI:GetData("guildtotal", itemID)
			local auctionTotal = TSMAPI:GetData("totalplayerauctions", itemID)
			if playerTotal and guildTotal then
				local total = playerTotal + altTotal + guildTotal + auctionTotal
				self.quantityText:Show()
				self.quantityText:SetText("|cff99ffff"..L["Currently Owned:"].."|r "..total)
			end
			
			local _,link,_,_,_,_,_,_,_,texture = GetItemInfo(item.itemString)
			self.linkText:SetText(link)
			self.icon.link = link
			self.icon:GetNormalTexture():SetTexture(texture)
			self.stackText:SetText(format(L["%s item(s) to buy/cancel"], item.num.."|cff99ffff"))
			self.bidText:SetText("|cff99ffff"..L["Target Price:"].."|r "..TSMAPI:FormatTextMoney(item.targetPrice))
			self.buyoutText:SetText("|cff99ffff"..L["Profit:"].."|r "..TSMAPI:FormatTextMoney(item.profit))
		else
			self.icon:Show()
			self.linkText:Show()
			self.stackText:Show()
			self.bidText:Show()
			self.buyoutText:Show()
			self.statusText:Hide()
			self.quantityText:Hide()
		
			local _,link,_,_,_,_,_,_,_,texture = GetItemInfo(item.itemString)
			self.linkText:SetText(link)
			self.icon.link = link
			self.icon:GetNormalTexture():SetTexture(texture)
			
			local sText = format("%s |cff99ffffauctions of|r %s", item.numStacks, item.stackSize)
			self.stackText:SetText(sText)
			
			self.bidText:SetText("|cff99ffff"..L["Bid:"].."|r "..TSMAPI:FormatTextMoney(item.bid))
			self.buyoutText:SetText("|cff99ffff"..L["Buyout:"].."|r "..TSMAPI:FormatTextMoney(item.buyout))

			private.contentButtons.editPriceButton:Enable()
			private.contentButtons.editPriceFrame.itemString = item.itemString
			private.contentButtons.editPriceFrame.info = {itemString=item.itemString, link=link, buyout=item.buyout}
		end
	end
	
	frame.UpdateMode = function(self)
	
	end
	
	local icon = CreateFrame("Button", nil, frame)
	icon:SetPoint("TOPLEFT", 70, -45)
	icon:SetWidth(50)
	icon:SetHeight(50)
	local tex = icon:CreateTexture()
	tex:SetAllPoints(icon)
	icon:SetNormalTexture(tex)
	icon:SetScript("OnEnter", function(self)
			if self.link and self.link ~= "" then
				GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
				GameTooltip:SetHyperlink(self.link)
				GameTooltip:Show()
			end
		end)
	icon:SetScript("OnLeave", function()
			GameTooltip:ClearLines()
			GameTooltip:Hide()
		end)
	frame.icon = icon
	
	local linkText = frame:CreateFontString()
	linkText:SetPoint("TOPLEFT", icon, "TOPRIGHT", 4, 0)
	linkText:SetPoint("BOTTOMLEFT", icon, "BOTTOMRIGHT", 4, 0)
	linkText:SetWidth(200)
	linkText:SetFontObject(GameFontNormal)
	linkText:SetJustifyH("LEFT")
	linkText:SetJustifyV("CENTER")
	linkText:SetTextColor(1, 1, 1, 1)
	linkText:SetText("")
	frame.linkText = linkText
	
	local stackText = frame:CreateFontString()
	stackText:SetPoint("TOPLEFT", 330, -38)
	stackText:SetWidth(175)
	stackText:SetHeight(18)
	stackText:SetFontObject(GameFontNormal)
	stackText:SetJustifyH("LEFT")
	stackText:SetJustifyV("CENTER")
	stackText:SetTextColor(1, 1, 1, 1)
	stackText:SetText("")
	frame.stackText = stackText
	
	local bidText = frame:CreateFontString()
	bidText:SetPoint("TOPLEFT", 330, -58)
	bidText:SetWidth(175)
	bidText:SetHeight(18)
	local font, height = GameFontNormal:GetFont()
	bidText:SetFont(font, height-1)
	bidText:SetJustifyH("LEFT")
	bidText:SetJustifyV("CENTER")
	bidText:SetTextColor(1, 1, 1, 1)
	bidText:SetText("")
	frame.bidText = bidText
	
	local buyoutText = frame:CreateFontString()
	buyoutText:SetPoint("TOPLEFT", 330, -78)
	buyoutText:SetWidth(175)
	buyoutText:SetHeight(18)
	buyoutText:SetFontObject(GameFontNormal)
	buyoutText:SetJustifyH("LEFT")
	buyoutText:SetJustifyV("CENTER")
	buyoutText:SetTextColor(1, 1, 1, 1)
	buyoutText:SetText("")
	frame.buyoutText = buyoutText
	
	local statusText = frame:CreateFontString()
	statusText:SetPoint("CENTER", frame, "TOPLEFT", 300, -65)
	statusText:SetWidth(400)
	statusText:SetFontObject(GameFontNormal)
	statusText:SetJustifyH("CENTER")
	statusText:SetJustifyV("CENTER")
	statusText:SetTextColor(1, 1, 1, 1)
	statusText:SetText("")
	frame.statusText = statusText
	
	local quantityText = frame:CreateFontString()
	quantityText:SetPoint("TOPLEFT", 520, -38)
	quantityText:SetWidth(175)
	quantityText:SetHeight(18)
	quantityText:SetFontObject(GameFontNormal)
	quantityText:SetJustifyH("LEFT")
	quantityText:SetJustifyV("CENTER")
	quantityText:SetTextColor(1, 1, 1, 1)
	quantityText:SetText("")
	frame.quantityText = quantityText
	
	return frame
end

function private:CreateAuctionsST(parent)
	local events = {
		["OnClick"] = function(self, _, data, _, _, rowNum, column, st, button)
			if rowNum then
				st:SetSelection(rowNum)
				if button == "RightButton" then
					TSMAPI:GetSTRowRightClickFunction()(self, data[rowNum].record.parent.itemLink)
				end
				return true
			else
				st:OnColumnClick(column)
			end
		end,
	}
	
	local function GetPriceColName()
		if TSMAPI:GetPricePerUnitValue() then
			return L["Price Per Item"]
		else
			return L["Price Per Stack"]
		end
	end

	local colInfo = {
		{name="Item", width=0.3},
		{name=L["Auctions"], width=0.09, align="CENTER"},
		{name=L["Stack Size"], width=0.06, align="CENTER"},
		{name=L["Time Left"], width=0.15, align="CENTER"},
		{name=L["Seller"], width=0.13, align="CENTER"},
		{name=GetPriceColName(), width=0.15, align="RIGHT"},
		{name=L["% Market Value"], width=0.1, align="CENTER"},
		yAdjust = -30,
	}

	local st = TSMAPI:CreateAuctionsST(parent, colInfo, events)
	st:Hide()
	st.expanded = {}
	st.UpdateSTData = private.UpdateAuctionsSTData
	
	local function TSM_PRICE_PER_CHECKBOX_CHANGED(_, value)
		private.UpdateAuctionsSTData()
		st.head.cols[6]:GetFontString():SetText(GetPriceColName())
	end
	
	st.head.cols[7]:Click()
	st.frame:SetScript("OnShow", function() GUI:RegisterMessage("TSM_PRICE_PER_CHECKBOX_CHANGED", TSM_PRICE_PER_CHECKBOX_CHANGED) end)
	st.frame:SetScript("OnHide", function() GUI:UnregisterMessage("TSM_PRICE_PER_CHECKBOX_CHANGED") end)
	
	return st
end

function private:CreateLogST(parent)
	local events = {
		["OnEnter"] = function(_, cellFrame, data, _, _, rowNum, columncolumn)
			if rowNum then
				GameTooltip:SetOwner(cellFrame, "ANCHOR_NONE")
				GameTooltip:SetPoint("BOTTOMLEFT", cellFrame, "TOPLEFT")
				
				local row = data[rowNum]
				local threshold = TSM.Config:GetConfigValue(row.itemString, "threshold")
				local fallback = TSM.Config:GetConfigValue(row.itemString, "fallback")
				local info = row.cols[4].value(unpack(row.cols[4].args))
				local buyout = row.cols[2].args[1]
				
				GameTooltip:AddLine(row.cols[1].args[2] or "")
				GameTooltip:AddLine(L["Group:"].." |cffffffff"..(TSM.itemReverseLookup[row.itemString] or "---"))
				GameTooltip:AddLine(L["Threshold:"].." "..(TSMAPI:FormatTextMoney(threshold, "|cffffffff") or "???"))
				GameTooltip:AddLine(L["Fallback:"].." "..(TSMAPI:FormatTextMoney(fallback, "|cffffffff") or "???"))
				GameTooltip:AddLine(L["Lowest Buyout:"].." |r"..(TSMAPI:FormatTextMoney(buyout, "|cffffffff") or "---"))
				GameTooltip:AddLine(L["Log Info:"].." "..info)
				GameTooltip:AddLine("\n|cff99ffff"..L["Click to show auctions for this item."].."|r")
				GameTooltip:AddLine("|cff99ffff"..format(L["Right-Click to add %s to your friends list."], "|r"..(row.seller or "---").."|cff99ffff").."|r")
				GameTooltip:AddLine("|cff99ffff"..L["Shift-Right-Click to show the options for this item's Auctioning group."].."|r")
				GameTooltip:Show()
			end
		end,
		["OnLeave"] = function(_, _, _, _, _, rowNum)
			if rowNum then
				GameTooltip:Hide()
			end
		end,
		["OnClick"] = function(_, _, data, _, _, rowNum, _, _, mouseButton)
			if rowNum then
				local row = data[rowNum]
				if mouseButton == "LeftButton" then
					private.contentButtons:UnlockHighlight()
					private.logST:Hide()
					private.auctionsST:Show()
					private.auctionsST.isCurrentItem = row.itemString
					private:UpdateAuctionsSTData()
				elseif mouseButton == "RightButton" then
					if IsShiftKeyDown() then
						local group = TSM.itemReverseLookup[row.itemString]
						if group then
							TSMAPI:OpenFrame()
							TSMAPI:SelectIcon("TradeSkillMaster_Auctioning", L["Auctioning Groups/Options"])
							TSM.Config.treeGroup:SelectByPath(2, TSM.groupReverseLookup[group] or "~", group)
						else
							TSM:Print(L["Could not find item's group."])
						end
					else
						if data[rowNum].seller then
							AddFriend(data[rowNum].seller)
						else
							TSM:Print(L["This item does not have any seller data."])
						end
					end
				end
				return true
			end
		end,
	}
	
	local function ColSortMethod(st, aRow, bRow, col)
		local a, b = st:GetCell(aRow, col), st:GetCell(bRow, col)
		local column = st.cols[col]
		local direction = column.sort or column.defaultsort or "dsc"
		local aValue, bValue = ((a.args or {})[1] or a.value), ((b.args or {})[1] or b.value)
		
		if type(aValue) == "function" then
			aValue = aValue()
		end
		if type(bValue) == "function" then
			bValue = bValue()
		end
		
		if direction == "asc" then
			return aValue < bValue
		else
			return aValue > bValue
		end
	end

	local stCols = {
		{name=L["Item"], width=0.3, comparesort = ColSortMethod},
		{name=L["Lowest Buyout"], width=0.15, align="RIGHT", comparesort = ColSortMethod},
		{name=L["Seller"], width=0.13, align="CENTER", comparesort = ColSortMethod},
		{name=L["Info"], width=0.4, align="LEFT", comparesort = ColSortMethod},
	}
	
	local function GetSTColInfo(width)
		local colInfo = CopyTable(stCols)
		for i=1, #colInfo do
			colInfo[i].width = floor(colInfo[i].width*width)
		end

		return colInfo
	end
	
	local ROW_HEIGHT = 20

	local st = TSMAPI:CreateScrollingTable(GetSTColInfo(parent:GetWidth()))
	st.frame:SetParent(parent)
	st.frame:SetPoint("TOPLEFT", 0, -50)
	st.frame:SetPoint("BOTTOMRIGHT")
	st.frame:SetScript("OnSizeChanged", function(_,width, height)
			st:SetDisplayCols(GetSTColInfo(width))
			st:SetDisplayRows(12, floor((height-20)/12))
		end)
		
	local font = GameFontHighlightSmall:GetFont()
	for i, row in ipairs(st.rows) do
		row:SetHeight(ROW_HEIGHT)
		local tex = row:CreateTexture()
		tex:SetPoint("TOPLEFT", 4, -2)
		tex:SetPoint("BOTTOMRIGHT", -4, 2)
		tex:SetTexture("Interface\\WorldStateFrame\\WorldStateFinalScore-Highlight")
		tex:SetTexCoord(0.017, 1, 0.083, 0.909)
		tex:SetAlpha(0.3)
		row:SetNormalTexture(tex)
		
		if i%2 == 1 then
			row:GetNormalTexture():SetAlpha(0)
		end
		
		for j, col in ipairs(row.cols) do
			col.text:SetHeight(ROW_HEIGHT)
			col.text:SetFont(font, 10)
		end
	end

	st.scrollframe:SetScript("OnVerticalScroll", function(self, offset)
			FauxScrollFrame_OnVerticalScroll(self, offset, st.rowHeight, function() st:Refresh() end)
			for i, row in ipairs(st.rows) do
				local tex = row:GetNormalTexture()
				if not tex then
					tex = row:CreateTexture()
					tex:SetPoint("TOPLEFT", 4, -2)
					tex:SetPoint("BOTTOMRIGHT", -4, 2)
					tex:SetTexture("Interface\\WorldStateFrame\\WorldStateFinalScore-Highlight")
					tex:SetTexCoord(0.017, 1, 0.083, 0.909)
				end
				if i%2 == st.offset%2 then
					tex:SetAlpha(0.3)
				else
					tex:SetAlpha(0)
				end
				row:SetNormalTexture(tex)
			end
		end)
	
	st:Show()
	st:SetData({})
	st:RegisterEvents(events)
	st.frame:GetScript("OnSizeChanged")(st.frame, st.frame:GetWidth(), st.frame:GetHeight())
	st:EnableSelection(true)
	st:Hide()
	return st
end

function private:UpdateTables()
	private:UpdateAuctionsSTData()
	private:UpdateLogSTData()
end

local defaultSortOrderPerItem = {"Percent", "ItemBuyout", "ItemDisplayedBid", "TimeLeft", "Count", "Seller", "NumAuctions", "Name"}
local defaultSortOrderPerStack = {"Percent", "Buyout", "DisplayedBid", "TimeLeft", "Count", "Seller", "NumAuctions", "Name"}
local colSortInfoPerItem = {"Name", "NumAuctions", "Count", "TimeLeft", "Seller", "ItemBuyout", "Percent"}
local colSortInfoPerStack = {"Name", "NumAuctions", "Count", "TimeLeft", "Seller", "Buyout", "Percent"}
function private:UpdateAuctionsSTData()
	if not private.auctionsST.frame:IsVisible() or not private.auctionsST.sortInfo then return end

	local results = {}
	if private.auctionsST.isCurrentItem then
		local itemString
		if type(private.auctionsST.isCurrentItem) == "string" or type(private.auctionsST.isCurrentItem) == "number" then
			itemString = private.auctionsST.isCurrentItem
		else
			itemString = TSM[private.mode]:GetCurrentItem().itemString
		end
		if itemString and TSM.Scan.auctionData[itemString] then
			tinsert(results, TSM.Scan.auctionData[itemString])
			TSMAPI:CreateTimeDelay("aucExpandRow", 0.05, function() private.auctionsST:ExpandItem(itemString) end)
		end
	else
		for _, auction in pairs(TSM.Scan.auctionData) do
			-- combine auctions with the same buyout / count / seller
			tinsert(results, auction)
		end
	end
	
	local sortParams
	if TSMAPI:GetPricePerUnitValue() then
		sortParams = defaultSortOrderPerItem
		tinsert(sortParams, 1, colSortInfoPerItem[private.auctionsST.sortInfo.col])
	else
		sortParams = defaultSortOrderPerStack
		tinsert(sortParams, 1, colSortInfoPerStack[private.auctionsST.sortInfo.col])
	end
	local isAscending = private.auctionsST.sortInfo.order == "asc"
	TSMAPI:SortAuctions(results, sortParams, true, isAscending)
	TSMAPI:SetSTData(private.auctionsST, results)
end

function private:GetLogSTRow(record)
	if private.logST.cache[record] then
		return private.logST.cache[record]
	end

	local function GetNameText(_, link)
		return link
	end
	
	local function GetPriceText(buyout)
		return TSMAPI:FormatTextMoney(buyout, nil, true) or "---"
	end
	
	local function GetSellerText(seller, isWhitelist, isBlacklist, isPlayer)
		if seller then
			if isPlayer then
				return "|cffffff00"..seller.."|r"
			elseif isWhiteList then
				return "|cff99ffff"..seller.."|r"
			elseif isBlackList then
				return "|cffff0033"..seller.."|r"
			else
				return "|cffffffff"..seller.."|r"
			end
		end
		
		return "|cffffffff---|r"
	end
	
	local function GetInfoText(info, mode, reason)
		local color = TSM.Log:GetColor(mode, reason)
		return (color or "|cffffffff")..(info or "---").."|r"
	end
	
	local name, link = GetItemInfo(record.itemString)
	local buyout, seller, isWhitelist, isBlacklist, isPlayer
	if record.reason ~= "cancelAll" then
		buyout, _, seller, isWhitelist, isBlacklist, isPlayer = TSM.Scan:GetLowestAuction(record.itemString)
	end
	local row = {
		cols = {
			{
				value = GetNameText,
				args = {name, link},
			},
			{
				value = GetPriceText,
				args = {buyout},
			},
			{
				value = GetSellerText,
				args = {seller, isWhitelist, isBlacklist, isPlayer},
			},
			{
				value = GetInfoText,
				args = {record.info, record.mode, record.reason},
			},
		},
		itemString = record.itemString,
		seller = seller,
	}
	
	private.logST.cache[record] = row
	return row
end

function private:UpdateLogSTData()
	local rows = {}
	for i, record in ipairs(TSM.Log:GetData()) do
		tinsert(rows, private:GetLogSTRow(record))
	end
	private.logST:SetData(rows)
	
	if #rows > private.logST.displayRows then
		TSMAPI:CreateTimeDelay("logSTOffset", 0.08, function()
				private.logST:SetScrollOffset(#private.logST.filtered - private.logST.displayRows)
			end)
	end
end

function private:UpdateSTData()
	private:UpdateLogSTData()
	private:UpdateAuctionsSTData()
end

local function SetGoldText()
	local text = format(L["Done Posting\n\nTotal value of your auctions: %s\nIncoming Gold: %s"], TSM.Post:GetAHGoldTotal())
	private.infoText:SetInfo(text)
end

function private:Stopped(notDone)
	TSM.Manage:UnregisterAllMessages()
	private.buttons:Disable(true)
	private.statusBar:UpdateStatus(100, 100)
	
	--private.contentButtons.editPriceButton:Hide()
	private.contentButtons.currAuctionsButton:Hide()
	
	if private.mode == "Post" then
		TSMAPI:CreateTimeDelay("aucTotalGold", 0.5, SetGoldText)
		SetGoldText()
		private.statusBar:SetStatusText(L["Post Scan Finished"])
	elseif private.mode == "Cancel" then
		private.infoText:SetInfo(L["Done Canceling"])
		private.statusBar:SetStatusText(L["Cancel Scan Finished"])
	elseif private.mode == "Reset" then
		if not notDone then
			private.infoText:SetInfo(L["No Items to Reset"])
		end
		private.statusBar:SetStatusText(L["Reset Scan Finished"])
	end
end