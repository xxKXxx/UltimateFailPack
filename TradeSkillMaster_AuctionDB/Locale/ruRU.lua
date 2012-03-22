-- ------------------------------------------------------------------------------------- --
-- 					TradeSkillMaster_AuctionDB - AddOn by Sapu94							 	  	  --
--   http://wow.curse.com/downloads/wow-addons/details/tradeskillmaster_auctiondb.aspx   --
--																													  --
--		This addon is licensed under the CC BY-NC-ND 3.0 license as described at the		  --
--				following url: http://creativecommons.org/licenses/by-nc-nd/3.0/			 	  --
-- 	Please contact the author via email at sapu94@gmail.com with any questions or		  --
--		concerns regarding this license.																	  --
-- ------------------------------------------------------------------------------------- --

-- TradeSkillMaster_AuctionDB Locale - ruRU
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_AuctionDB/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_AuctionDB", "ruRU")
if not L then return end

-- L["A full auction house scan will scan every item on the auction house but is far slower than a GetAll scan. Expect this scan to take several minutes or longer."] = ""
-- L["A GetAll scan is the fastest in-game method for scanning every item on the auction house. However, it may disconnect you from the game and has a 15 minute cooldown."] = ""
L["Alchemy"] = "Алхимия"
-- L["Any items in the AuctionDB database that contain the search phrase in their names will be displayed."] = ""
-- L["A profession scan will scan items required/made by a certain profession."] = ""
L["Are you sure you want to clear your AuctionDB data?"] = "Вы точно хотите очистить базу AuctionDB?" -- Needs review
L["Ascending"] = "Возрастание" -- Needs review
-- L["AuctionDB - Market Value"] = ""
L["AuctionDB Market Value:"] = "AuctionDB рыночная цена:"
L["AuctionDB Min Buyout:"] = "AuctionDB минимальный выкуп:"
-- L["AuctionDB - Minimum Buyout"] = ""
L["AuctionDB Seen Count:"] = "Сколько раз появлялся на ауке (данные AuctionDB):"
L["Blacksmithing"] = "Кузнечное дело"
L["|cffff0000WARNING:|r As of 4.0.1 there is a bug with GetAll scans only scanning a maximum of 42554 auctions from the AH which is less than your auction house currently contains. As a result, thousands of items may have been missed. Please use regular scans until blizzard fixes this bug."] = "|cffff0000Внимание: с патча 4.0.1 из-за бага GetAll сканирует только 42554 лота, что меньше общего количества лотов сейчас на вашем аукционе. Тысячи лотов могут быть не учтены. До тех пор, пока Blizzard не исправит эту ошибку, пользуйтесь обычным способом сканирования. "
L["Cooking"] = "Кулинария"
L["Descending"] = "Убывание" -- Needs review
-- L["Done Scanning"] = ""
L["Enable display of AuctionDB data in tooltip."] = "Включить отображение данных AuctionDB в подсказке."
L["Enchanting"] = "Наложение чар"
L["Engineering"] = "Инженерия"
L["General Options"] = "Общие настройки" -- Needs review
L["Hide poor quality items"] = "Скрыт вещи плохого качества" -- Needs review
L["If checked, poor quality items won't be shown in the search results."] = "Не показывать вещи плохого качества" -- Needs review
L["Inscription"] = "Начертание"
-- L["Invalid value entered. You must enter a number between 5 and 500 inclusive."] = ""
-- L["Item Link"] = ""
-- L["Item MinLevel"] = ""
-- L["Items per page"] = ""
-- L["Items %s - %s (%s total)"] = ""
-- L["Item SubType Filter"] = ""
-- L["Item Type Filter"] = ""
-- L["It is strongly recommended that you reload your ui (type '/reload') after running a GetAll scan. Otherwise, any other scans (Post/Cancel/Search/etc) will be much slower than normal."] = ""
L["Jewelcrafting"] = "Ювелирное дело"
-- L["Last Scanned"] = ""
L["Leatherworking"] = "Кожевничество"
-- L["Market Value"] = ""
-- L["Minimum Buyout"] = ""
-- L["Never scan the auction house again!"] = ""
-- L["Next Page"] = ""
-- L["No items found"] = ""
L["Not Ready"] = "Не готово"
-- L["Num(Yours)"] = ""
-- L["Options"] = ""
-- L["Previous Page"] = ""
-- L["Professions:"] = ""
L["Ready"] = "Готово"
L["Ready in %s min and %s sec"] = "Готовность через %s  мин %s  сек."
-- L["Refresh"] = ""
-- L["Refreshes the current search results."] = ""
-- L["Removed %s from AuctionDB."] = ""
-- L["Reset Data"] = ""
-- L["Resets AuctionDB's scan data"] = ""
-- L["Run Full Scan"] = ""
L["Run GetAll Scan"] = "Запустить GetAll сканирование"
-- L["Run Profession Scan"] = ""
L["Run Scan"] = "Запустить сканирование"
L["%s ago"] = "%s тому назад"
-- L["Scan interrupted."] = ""
-- L["Scanning..."] = ""
-- L["Scan the auction house with AuctionDB to update its market value and min buyout data."] = ""
-- L["Search"] = ""
-- L["Search Options"] = ""
-- L["Select how you would like the search results to be sorted. After changing this option, you may need to refresh your search results by hitting the \"Refresh\" button."] = ""
-- L["Select professions to include in the profession scan."] = ""
-- L["Shift-Right-Click to clear all data for this item from AuctionDB."] = ""
-- L["Sort items by"] = ""
-- L["Sort search results in ascending order."] = ""
-- L["Sort search results in descending order."] = ""
-- L["%s - Scanning page %s/%s of filter %s/%s"] = ""
L["Tailoring"] = "Портняжное дело."
-- L["The author of TradeSkillMaster has created an application which uses blizzard's online auction house APIs to update your AuctionDB data automatically. Check it out at the link in TSM_AuctionDB's description on curse or at: %s"] = ""
-- L["This determines how many items are shown per page in results area of the \"Search\" tab of the AuctionDB page in the main TSM window. You may enter a number between 5 and 500 inclusive. If the page lags, you may want to decrease this number."] = ""
-- L["Use the search box and category filters above to search the AuctionDB data."] = ""
-- L["Waiting for data..."] = ""
-- L["You can filter the results by item subtype by using this dropdown. For example, if you want to search for all herbs, you would select \"Trade Goods\" in the item type dropdown and \"Herbs\" in this dropdown."] = ""
-- L["You can filter the results by item type by using this dropdown. For example, if you want to search for all herbs, you would select \"Trade Goods\" in this dropdown and \"Herbs\" as the subtype filter."] = ""
-- L["You can use this page to lookup an item or group of items in the AuctionDB database. Note that this does not perform a live search of the AH."] = ""
 