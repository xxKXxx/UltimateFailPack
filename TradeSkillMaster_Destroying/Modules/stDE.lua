-- loads the localization table --
local L = LibStub("AceLocale-3.0"):GetLocale("TradeSkillMaster_Destroying") 

-- load the parent file (TSM) into a local variable and register this file as a module
local TSM = select(2, ...)
local stDE = TSM:NewModule("stDE", "AceEvent-3.0")
local AceGUI = LibStub("AceGUI-3.0") -- load the AceGUI libraries

local itemST = nil

local qualityColors = { --I stole this from Sapu....
	[0]="9d9d9d",
	[1]="ffffff",
	[2]="1eff00",
	[3]="0070dd",
	[4]="a335ee",
	[5]="ff8000",
	[6]="e6cc80",
}

local function noLoot()
    return{ { cols = { { 
        value = function() return "You have chosen to turn off sum loot"  end,
        args = {},
    },},}}
end

local function createDateRow(d)

    return 
	{
		cols = {
			{
				value = function(data) if data then return data end end,
				args = {d},
			},	
			{},
			{},
		},
	}
end

local function createRow(name,d)
    return  
	{
		
		cols = {
			{},
			{
                value = function(data, qual) if data and qual then return "|cff"..qualityColors[qual]..data.."|r" end end,
                args = {name, d.quality},
            },
			{
            	value = function(data) if data then return data end end,
				args = {d.num},
            },
		},

	}
end

function stDE:hideTable()
	if itemST then itemST:Hide() end
end

function stDE:updateTable(frame, action, filter)
	stDE:hideTable()
    stDE:DrawScrollFrame(frame, action, filter)
end

local function sortPairs(t)
    local u = {}
    local function compare (a,b) return a.key>b.key end
    for k, v in pairs(t) do table.insert(u, { key = k }) end
    table.sort(u, compare)
    return u
end

function stDE:DrawScrollFrame (container, action, filter)

    local ROW_HEIGHT = 20
    local stCols

    stCols ={
        {name="", width=0.25},
        {name="Item", width=0.48},
        {name="Quantiy", width=0.25},             
    }

    local function GetSTColInfo(width)
        local colInfo =CopyTable(stCols)
        for i=1, #colInfo do
            colInfo[i].width = floor(colInfo[i].width*width)
        end
        return colInfo
    end
        
    itemST = TSMAPI:CreateScrollingTable(GetSTColInfo(container.frame:GetWidth()))

    local stTable = {}

    if TSM.db.factionrealm.DE then
       for item,itemTable in pairs(TSM.db.factionrealm.DE) do
            local day = sortPairs(TSM.db.factionrealm.DE.Day)
            for _,d in ipairs(day) do
                table.insert(stTable,createDateRow(d.key))
                for i,v in pairs(TSM.db.factionrealm.DE.Day[d.key])do  
                    table.insert(stTable,createRow(i,v))
                end
            end
        end
        itemST:SetData(stTable)
    else
       itemST:SetData( noLoot() )
    end
 

    itemST.frame:SetParent(container.frame)
    itemST.frame:SetPoint("BOTTOMLEFT", container.frame, 10, 10)
    itemST.frame:SetPoint("TOPRIGHT", container.frame, -10, -130)
    itemST.frame:SetScript("OnSizeChanged", function(_,width, height)
            itemST:SetDisplayCols(GetSTColInfo(width))
            itemST:SetDisplayRows(floor(height/ROW_HEIGHT), ROW_HEIGHT)
        end)
    itemST:Show()

	
end