--[[
************************************************************************
Project				: Broker_HitCrit
Author				: zhinjio
Project Revision	: 2.22.1-release
Project Date		: 20110704205759

File				: Locales\zhTW.lua
Commit Author		: zhinjio
Commit Revision		: 86
Commit Date			: 20090811181118

************************************************************************
Description	:
	Traditional Chinese translation strings
TODO		:
************************************************************************
(see bottom of file for changelog)
************************************************************************
--]]

local L = LibStub:GetLibrary("AceLocale-3.0"):NewLocale("HitCrit", "zhTW" )
if not L then return end

-- L["%s for %s against %s"] = "%s for %s against %s"
L["ALERT_CHATFRAME_DESC"] = "勾選後在預設的聊天視窗中提醒"
L["ALERT_MSBTAREA_DESC"] = "勾選後在MSBT滾動區提醒"
L["ALERT_MSBT_DESC"] = "在MSBT滾動區接收提醒的選項"
L["ALERT_NOTIFY_DESC"] = "勾選後在通知訊息區提醒"
L["ALERT_OPTIONS_DESC"] = "當你獲得新的高數值時HitCrit將改變並通知你的選項"
L["ALERT_PARROTAREA_DESC"] = "勾選後在Parrot滾動區提醒"
L["ALERT_PARROT_DESC"] = "在Parrot滾動區詳述提醒的選項。只有安裝Parrot才會啟用。"
L["ALERT_SCREENIE_DESC"] = "勾選後獲得新的數值時拍照"
L["ALERT_SELECTMSBTAREA_DESC"] = "選擇要使用的MSBT滾動區"
L["ALERT_SELECTPARROTAREA_DESC"] = "選擇要使用的Parrot滾動區"
L["ALERT_SOUND_DESC"] = "勾選後提醒時使用音效"
-- L["ALERT_SUPERBUFF_TOGGLE"] = "Check to disable superbuff notifications in chatframe"
-- L["ARGENT_TOGGLE_DESC"] = "Suppress Argent Tourney spells"
L["Against"] = "抵抗"
L["Alert Options"] = "提醒的選項"
L["Alert in Chat Frame"] = "在聊天視窗中提醒"
L["Alert in MSBT Scroll Area"] = "在MSBT滾動區中提醒"
L["Alert in Parrot Scroll Area"] = "在Parrot滾動區中提醒"
L["Alert with Notify"] = "在通知區中提醒"
L["Alert with Sound"] = "通知時播放音效"
-- L["Alt-Left-click to delete values"] = "Alt-Left-click to delete values"
-- L["Alt-Right-click for to see Alternate Spec"] = "Alt-Right-click for to see Alternate Spec"
-- L["Alt-Right-click to see Active Spec"] = "Alt-Right-click to see Active Spec"
-- L["Alt-Right-click to see Inactive Spec"] = "Alt-Right-click to see Inactive Spec"
-- L["Argent Tourney"] = "Argent Tourney"
L["Author : "] = "作者："
L["Avg"] = "平均"
L["Broker_HitCrit"] = "HitCrit"
L["Build Date : "] = "檔案建立於："
-- L["Color Label Text"] = "Color Label Text"
L["Crit"] = "致命一擊"
L["Critical Heal"] = "極效治療"
L["Critical Hit"] = "致命一擊傷害"
L["DISPLAY_AVG_DESC"] = "勾選後包含'平均'欄"
-- L["DISPLAY_COLORLABEL_DESC"] = "Click to enable LDB text coloring. Disabling this lets the LDB bar addon handle the coloring."
-- L["DISPLAY_CRIT_DESC"] = "Checked to include the 'Crit' column"
-- L["DISPLAY_DEBUG_DESC"] = "Checked to display DEBUG information"
-- L["DISPLAY_ENEMYNAME_DESC"] = "Check to display enemy name"
-- L["DISPLAY_HIT_DESC"] = "Check to include the 'Hit' column"
-- L["DISPLAY_LABELDMG_DESC"] = "Check to display top damage values on the LDB Bar"
-- L["DISPLAY_LABELHEAL_DESC"] = "Check to display top healing values on the LDB Bar"
-- L["DISPLAY_LABEL_DESC"] = "Check to display top Hit/Crit values in the text label in the display"
-- L["DISPLAY_OPTIONS_DESC"] = "Options that change the way data is displayed in the tooltip"
-- L["DISPLAY_SORTSCHOOL_DESC"] = "Check to sort data by spell school"
-- L["DMG_GLOBAL_TOGGLE_DESC"] = "Toggle to affect all schools at once"
L["DMG_SCHOOLS_DESC"] = "追蹤包含各種傷害"
L["Damage"] = "傷害"
-- L["Damage Schools"] = "Damage Schools"
L["Database Version : "] = "資料庫版本："
L["Database upgraded to %s"] = "資料庫已更新到%s"
-- L["Detect Superbuffs"] = "Detect Superbuffs"
L["Display Avg"] = "顯示平均"
L["Display Crit"] = "顯示致命一擊"
L["Display Debug"] = "顯示除錯"
-- L["Display Dmg in Label"] = "Display Dmg in Label"
L["Display Enemy Name"] = "顯示敵方名稱"
L["Display Heal in Label"] = "在標籤上顯示治療"
L["Display Hit"] = "顯示擊中"
L["Display Options"] = "顯示的選項"
L["Display Top Values"] = "在標籤上顯示最高數值" -- Needs review
-- L["Draws the icon on the minimap."] = "Draws the icon on the minimap."
L["Effect"] = "效果"
-- L["Error occurred in the tooltip. I could not report for category (%s) and spell (%s)."] = "Error occurred in the tooltip. I could not report for category (%s) and spell (%s)."
L["GENERAL_INFO_DESC"] = "版本和作者的資料"
L["General Information"] = "一般的資料"
L["Global Damage Toggle"] = "切換總體傷害"
L["Global Healing Toggle"] = "切換總體治療"
-- L["HEAL_GLOBAL_TOGGLE_DESC"] = "Toggle to affect all schools at once"
-- L["HEAL_SCHOOLS_DESC"] = "Per school healing tracking inclusion"
L["Heal"] = "治療"
L["Healing"] = "治療"
-- L["Healing Schools"] = "Healing Schools"
L["Helpful Translators (thank you) : %s"] = "幫忙翻譯者(感謝你)：%s"
L["Hit"] = "擊中"
L["HitCrit Data Browser"] = "HitCrit資料瀏覽"
-- L["Inactive Spec"] = "Inactive Spec"
-- L["LDB Text Display Options"] = "LDB Text Display Options"
-- L["LDBDISPLAY_OPTIONS_DESC"] = "Options that change the text displayed on the LDB Bar"
L["Left-click for Data Browser"] = "左鍵點擊資料瀏覽"
-- L["Left-click to Report values in chat"] = "Left-click to Report values in chat"
-- L["MINIMAP_OPTIONS_DESC"] = "Options regarding the minimap icon"
-- L["MISCDISPLAY_OPTIONS_DESC"] = "Other options"
L["MSBT Integration"] = "整合MSBT"
L["Melee"] = "近戰"
-- L["Minimap Icon Options"] = "Minimap Icon Options"
-- L["Miscellaneous"] = "Miscellaneous"
-- L["Miscellaneous Display Options"] = "Miscellaneous Display Options"
-- L["New Record %s! %s %s %s for %d"] = "New Record %s! %s %s %s for %d"
-- L["No"] = "No"
-- L["Notes"] = "Notes"
-- L["Parrot Integration"] = "Parrot Integration"
-- L["Please note: All spell suppression, tracking and expansion toggles have been reset."] = "Please note: All spell suppression, tracking and expansion toggles have been reset."
-- L["Please report this error on the project webpage."] = "Please report this error on the project webpage."
-- L["RESETALL_TOOLTIP"] = "Click to reset all saved HitCrit data for this toon"
-- L["RESETCATEGORY_TOOLTIP"] = "Click to reset HitCrit data for the selected category for this toon"
-- L["RESETENTRY_TOOLTIP"] = "Click to reset HitCrit data for the selected category, school and entry for this toon"
-- L["RESETSCHOOL_TOOLTIP"] = "Click to reset HitCrit data for the selected category and school for this toon"
-- L["RESETSPECIFIC_TOOLTIP"] = "Click to reset the specific HitCrit data selected for this toon"
L["Reset ALL data for '%s'. Are you sure?"] = "重置'%s'所有資料。你確定？"
L["Reset All Data"] = "重置所有資料"
L["Reset Category Data"] = "重置類別資料"
-- L["Reset Category: %s, School: %s. Are you sure?"] = "Reset Category: %s, School: %s. Are you sure?"
-- L["Reset Category: %s. Are you sure?"] = "Reset Category: %s. Are you sure?"
L["Reset Entry Data"] = "重新載入資料"
-- L["Reset School Data"] = "Reset School Data"
L["Reset Specific Data"] = "重置特定的資料"
-- L["Reset all entries for spell: %s. Are you sure?"] = "Reset all entries for spell: %s. Are you sure?"
L["Reset data for '%s' - '%s'. Are you sure?"] = "重置'%s'-'%s'資料。你確定？"
-- L["Reset data for '%s' - Category: %s, School: %s. Are you sure?"] = "Reset data for '%s' - Category: %s, School: %s. Are you sure?"
-- L["Reset data for '%s' - Category: %s. Are you sure?"] = "Reset data for '%s' - Category: %s. Are you sure?"
-- L["Reset data for '%s' - Spell: %s. Are you sure?"] = "Reset data for '%s' - Spell: %s. Are you sure?"
-- L["Reset first %s entry for spell: %s. Are you sure?"] = "Reset first %s entry for spell: %s. Are you sure?"
L["Right-click for Configuration"] = "右鍵點擊開啟配置"
-- L["SUPPRESS_DMG_DESC"] = "Damage spell schools checked below WILL NOT be included in the tooltip."
-- L["SUPPRESS_HEAL_DESC"] = "Healing spell schools checked below WILL NOT be included in the tooltip."
-- L["SUPPRESS_MISC_DESC"] = "Miscellaneous Suppressions"
-- L["SUPPRESS_NOTES_DESC"] = "Suppression by selected schools only works if 'Sort by Schools' is turned on in the Display Options. Turning ALL schools on or off will still work, however."
-- L["SUPPRESS_OPTIONS_DESC"] = "Options pertaining to the suppression of spell schools in the toolip. Note that these are independent of whether data is being gathered for these schools or not."
L["Select MSBT Scroll Area"] = "選擇MSBT的滾動區"
L["Select Parrot Scroll Area"] = "選擇Parrot的滾動區"
-- L["Show Minimap Icon"] = "Show Minimap Icon"
-- L["Sort by School"] = "Sort by School"
-- L["Suppression Options"] = "Suppression Options"
-- L["TOOLTIP_DELAY_DESC"] = "Time (in seconds) that the tooltip will remain after moving mouse away"
-- L["TOOLTIP_SCALE_DESC"] = "Slide to change the scale of the tooltip"
-- L["TRACKING_OPTIONS_DESC"] = "Options that change the way data is gathered"
-- L["TRACK_AGAINSTME_DESC"] = "Check to track hits against me"
L["TRACK_DAMAGE_DESC"] = "勾選後追蹤傷害"
-- L["TRACK_DETECT_SP"] = "If checked, HitCrit will disable when superbuffs/vehicles are active"
-- L["TRACK_ENVIRONMENTAL_DESC"] = "Check to track environmental damage against me"
L["TRACK_HEALING_DESC"] = "勾選後追蹤治療"
-- L["TRACK_LOWLEVEL_DESC"] = "Check to track data against low level mobs"
L["TRACK_PVP_DESC"] = "勾選後追蹤PvP戰鬥"
-- L["TRACK_VULNERABLE_DESC"] = "Check to track data against vulnerable targets"
L["Take Screenshot"] = "拍照"
-- L["Tooltip Auto-hide Delay"] = "Tooltip Auto-hide Delay"
L["Tooltip Scale"] = "提示訊息比例"
L["Track Damage"] = "追蹤傷害"
-- L["Track Environmental"] = "Track Environmental"
-- L["Track Healing"] = "Track Healing"
-- L["Track Hits Against Me"] = "Track Hits Against Me"
L["Track Low Level"] = "追蹤低等級"
L["Track PvP"] = "追蹤PvP"
L["Track Vulnerable"] = "追蹤易傷"
L["Tracking Options"] = "追蹤的選項"
-- L["Turn off Superbuff Alerts"] = "Turn off Superbuff Alerts"
L["Version : "] = "版本："
L["Yes"] = "是"
-- L["You are no longer in a vehicle, but are still superbuffed. HitCrit remains disabled."] = "You are no longer in a vehicle, but are still superbuffed. HitCrit remains disabled."
-- L["You are no longer in a vehicle. HitCrit re-enabled."] = "You are no longer in a vehicle. HitCrit re-enabled."
-- L["You are no longer superbuffed. HitCrit re-enabled."] = "You are no longer superbuffed. HitCrit re-enabled."
-- L["You are now in a vehicle (doing higher than normal damage). HitCrit disabled."] = "You are now in a vehicle (doing higher than normal damage). HitCrit disabled."
-- L["You are now superbuffed (doing higher than normal damage). HitCrit disabled."] = "You are now superbuffed (doing higher than normal damage). HitCrit disabled."
L["arcane"] = "秘法"
-- L["casts"] = "casts"
-- L["chaos"] = "chaos"
-- L["chromatic"] = "chromatic"
-- L["divine"] = "divine"
-- L["elemental"] = "elemental"
L["fire"] = "火焰"
-- L["firestorm"] = "firestorm"
-- L["flamestrike"] = "flamestrike"
-- L["for"] = "for"
L["frost"] = "冰霜"
L["frostfire"] = "霜火"
L["froststorm"] = "霜暴"
-- L["froststrike"] = "froststrike"
-- L["healed"] = "healed"
-- L["holy"] = "holy"
-- L["holyfire"] = "holyfire"
-- L["holyfrost"] = "holyfrost"
-- L["holystorm"] = "holystorm"
-- L["holystrike"] = "holystrike"
-- L["magic"] = "magic"
L["nature"] = "自然"
L["physical"] = "物理"
L["shadow"] = "暗影"
-- L["shadowflame"] = "shadowflame"
-- L["shadowfrost"] = "shadowfrost"
-- L["shadowlight"] = "shadowlight"
L["shadowstorm"] = "暗暴"
-- L["shadowstrike"] = "shadowstrike"
-- L["spellfire"] = "spellfire"
-- L["spellfrost"] = "spellfrost"
-- L["spellshadow"] = "spellshadow"
-- L["spellstorm"] = "spellstorm"
-- L["spellstrike"] = "spellstrike"
-- L["stormstrike"] = "stormstrike"
-- L["with"] = "with"


--[[
************************************************************************
CHANGELOG:

Date : 08/11/09
	original add
************************************************************************
]]--