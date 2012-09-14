local L = LibStub:GetLibrary("AceLocale-3.0"):NewLocale("HitCrit", "zhCN" )
if not L then return end

-- L["Against"] = "Against"
-- L["ALERT_CHATFRAME_DESC"] = "Check to alert in the default Chat Frame"
-- L["Alert in Chat Frame"] = "Alert in Chat Frame"
-- L["Alert in MSBT Scroll Area"] = "Alert in MSBT Scroll Area"
-- L["Alert in Parrot Scroll Area"] = "Alert in Parrot Scroll Area"
-- L["ALERT_MSBTAREA_DESC"] = "Check to alert in an MSBT Scroll Area"
-- L["ALERT_MSBT_DESC"] = "Options to receive alerts in MikScrollingBattleText Scroll Areas"
-- L["ALERT_NOTIFY_DESC"] = "Check to alert with a Notify Area message"
L["Alert Options"] = "警报选项" -- Needs review
-- L["ALERT_OPTIONS_DESC"] = "Options that change the way HitCrit notifies you when you get a new high value"
-- L["ALERT_PARROTAREA_DESC"] = "Check to alert in a Parrot Scroll Area"
-- L["ALERT_PARROT_DESC"] = "Options to receive alerts in Parrot Scroll Areas. Only enabled if Parrot is installed."
-- L["ALERT_SCREENIE_DESC"] = "Check to take a screenshot on new high value"
-- L["ALERT_SELECTMSBTAREA_DESC"] = "Select the MSBT Scroll Area to use"
-- L["ALERT_SELECTPARROTAREA_DESC"] = "Select the Parrot Scroll Area to use"
-- L["ALERT_SOUND_DESC"] = "Check to alert with a sound"
-- L["ALERT_SUPERBUFF_TOGGLE"] = "Check to disable superbuff notifications in chatframe"
-- L["Alert with Notify"] = "Alert with Notify"
L["Alert with Sound"] = "声音警报" -- Needs review
-- L["Alt-Left-click to delete values"] = "Alt-Left-click to delete values"
-- L["Alt-Right-click for to see Alternate Spec"] = "Alt-Right-click for to see Alternate Spec"
-- L["Alt-Right-click to see Active Spec"] = "Alt-Right-click to see Active Spec"
-- L["Alt-Right-click to see Inactive Spec"] = "Alt-Right-click to see Inactive Spec"
-- L["arcane"] = "arcane"
-- L["ARGENT_TOGGLE_DESC"] = "Suppress Argent Tourney spells"
-- L["Argent Tourney"] = "Argent Tourney"
L["Author : "] = "作者：" -- Needs review
L["Avg"] = "平均" -- Needs review
-- L["Broker_HitCrit"] = "HitCrit"
-- L["Build Date : "] = "Build Date : "
-- L["casts"] = "casts"
-- L["chaos"] = "chaos"
-- L["chromatic"] = "chromatic"
-- L["Color Label Text"] = "Color Label Text"
-- L["Crit"] = "Crit"
-- L["Critical Heal"] = "Critical Heal"
-- L["Critical Hit"] = "Critical Hit"
-- L["Damage"] = "Damage"
-- L["Damage Schools"] = "Damage Schools"
-- L["Database upgraded to %s"] = "Database upgraded to %s"
-- L["Database Version : "] = "Database Version : "
-- L["Detect Superbuffs"] = "Detect Superbuffs"
-- L["Display Avg"] = "Display Avg"
-- L["DISPLAY_AVG_DESC"] = "Check to include the 'Avg' column"
-- L["DISPLAY_COLORLABEL_DESC"] = "Click to enable LDB text coloring. Disabling this lets the LDB bar addon handle the coloring."
-- L["Display Crit"] = "Display Crit"
-- L["DISPLAY_CRIT_DESC"] = "Checked to include the 'Crit' column"
-- L["Display Debug"] = "Display Debug"
-- L["DISPLAY_DEBUG_DESC"] = "Checked to display DEBUG information"
-- L["Display Dmg in Label"] = "Display Dmg in Label"
-- L["Display Enemy Name"] = "Display Enemy Name"
-- L["DISPLAY_ENEMYNAME_DESC"] = "Check to display enemy name"
-- L["Display Heal in Label"] = "Display Heal in Label"
-- L["Display Hit"] = "Display Hit"
-- L["DISPLAY_HIT_DESC"] = "Check to include the 'Hit' column"
-- L["DISPLAY_LABEL_DESC"] = "Check to display top Hit/Crit values in the text label in the display"
-- L["DISPLAY_LABELDMG_DESC"] = "Check to display top damage values on the LDB Bar"
-- L["DISPLAY_LABELHEAL_DESC"] = "Check to display top healing values on the LDB Bar"
-- L["Display Options"] = "Display Options"
-- L["DISPLAY_OPTIONS_DESC"] = "Options that change the way data is displayed in the tooltip"
-- L["DISPLAY_SORTSCHOOL_DESC"] = "Check to sort data by spell school"
-- L["Display Top Values"] = "Display Top Values"
-- L["divine"] = "divine"
-- L["DMG_GLOBAL_TOGGLE_DESC"] = "Toggle to affect all schools at once"
-- L["DMG_SCHOOLS_DESC"] = "Per school damage tracking inclusion"
-- L["Draws the icon on the minimap."] = "Draws the icon on the minimap."
-- L["Effect"] = "Effect"
-- L["elemental"] = "elemental"
-- L["Error occurred in the tooltip. I could not report for category (%s) and spell (%s)."] = "Error occurred in the tooltip. I could not report for category (%s) and spell (%s)."
L["fire"] = "火" -- Needs review
-- L["firestorm"] = "firestorm"
-- L["flamestrike"] = "flamestrike"
-- L["for"] = "for"
L["frost"] = "霜" -- Needs review
-- L["frostfire"] = "frostfire"
-- L["froststorm"] = "froststorm"
-- L["froststrike"] = "froststrike"
-- L["GENERAL_INFO_DESC"] = "Version and author information"
-- L["General Information"] = "General Information"
-- L["Global Damage Toggle"] = "Global Damage Toggle"
-- L["Global Healing Toggle"] = "Global Healing Toggle"
L["Heal"] = "治疗" -- Needs review
L["healed"] = "治疗" -- Needs review
-- L["HEAL_GLOBAL_TOGGLE_DESC"] = "Toggle to affect all schools at once"
L["Healing"] = "治疗" -- Needs review
-- L["Healing Schools"] = "Healing Schools"
-- L["HEAL_SCHOOLS_DESC"] = "Per school healing tracking inclusion"
-- L["Helpful Translators (thank you) : %s"] = "Helpful Translators (thank you) : %s"
-- L["Hit"] = "Hit"
-- L["HitCrit Data Browser"] = "HitCrit Data Browser"
L["holy"] = "神圣" -- Needs review
-- L["holyfire"] = "holyfire"
-- L["holyfrost"] = "holyfrost"
-- L["holystorm"] = "holystorm"
-- L["holystrike"] = "holystrike"
-- L["If you notice errors or values not updating, try clearing out values."] = "If you notice errors or values not updating, try clearing out values."
-- L["Inactive Spec"] = "Inactive Spec"
-- L["LDBDISPLAY_OPTIONS_DESC"] = "Options that change the text displayed on the LDB Bar"
-- L["LDB Text Display Options"] = "LDB Text Display Options"
-- L["Left-click for Data Browser"] = "Left-click for Data Browser"
-- L["Left-click to Report values in chat"] = "Left-click to Report values in chat"
-- L["magic"] = "magic"
-- L["Melee"] = "Melee"
-- L["Minimap Icon Options"] = "Minimap Icon Options"
-- L["MINIMAP_OPTIONS_DESC"] = "Options regarding the minimap icon"
-- L["MISCDISPLAY_OPTIONS_DESC"] = "Other options"
-- L["Miscellaneous"] = "Miscellaneous"
-- L["Miscellaneous Display Options"] = "Miscellaneous Display Options"
-- L["MSBT Integration"] = "MSBT Integration"
L["nature"] = "自然" -- Needs review
-- L["New Record %s! %s %s %s for %d"] = "New Record %s! %s %s %s for %d"
-- L["No"] = "No"
-- L["Notes"] = "Notes"
-- L["Parrot Integration"] = "Parrot Integration"
L["physical"] = "物理" -- Needs review
-- L["Please note: All spell suppression, tracking and expansion toggles have been reset."] = "Please note: All spell suppression, tracking and expansion toggles have been reset."
-- L["Please note: Due to changes in 4.2, you may need to clear data."] = "Please note: Due to changes in 4.2, you may need to clear data."
-- L["Please report this error on the project webpage."] = "Please report this error on the project webpage."
-- L["Reset All Data"] = "Reset All Data"
-- L["Reset ALL data for '%s'. Are you sure?"] = "Reset ALL data for '%s'. Are you sure?"
-- L["Reset all entries for spell: %s. Are you sure?"] = "Reset all entries for spell: %s. Are you sure?"
-- L["RESETALL_TOOLTIP"] = "Click to reset all saved HitCrit data for this toon"
-- L["Reset Category Data"] = "Reset Category Data"
-- L["Reset Category: %s. Are you sure?"] = "Reset Category: %s. Are you sure?"
-- L["Reset Category: %s, School: %s. Are you sure?"] = "Reset Category: %s, School: %s. Are you sure?"
-- L["RESETCATEGORY_TOOLTIP"] = "Click to reset HitCrit data for the selected category for this toon"
-- L["Reset data for '%s' - Category: %s. Are you sure?"] = "Reset data for '%s' - Category: %s. Are you sure?"
-- L["Reset data for '%s' - Category: %s, School: %s. Are you sure?"] = "Reset data for '%s' - Category: %s, School: %s. Are you sure?"
-- L["Reset data for '%s' - '%s'. Are you sure?"] = "Reset data for '%s' - '%s'. Are you sure?"
-- L["Reset data for '%s' - Spell: %s. Are you sure?"] = "Reset data for '%s' - Spell: %s. Are you sure?"
-- L["Reset Entry Data"] = "Reset Entry Data"
-- L["RESETENTRY_TOOLTIP"] = "Click to reset HitCrit data for the selected category, school and entry for this toon"
-- L["Reset first %s entry for spell: %s. Are you sure?"] = "Reset first %s entry for spell: %s. Are you sure?"
-- L["Reset School Data"] = "Reset School Data"
-- L["RESETSCHOOL_TOOLTIP"] = "Click to reset HitCrit data for the selected category and school for this toon"
-- L["Reset Specific Data"] = "Reset Specific Data"
-- L["RESETSPECIFIC_TOOLTIP"] = "Click to reset the specific HitCrit data selected for this toon"
-- L["Right-click for Configuration"] = "Right-click for Configuration"
-- L["Select MSBT Scroll Area"] = "Select MSBT Scroll Area"
-- L["Select Parrot Scroll Area"] = "Select Parrot Scroll Area"
-- L["%s for %s against %s"] = "%s for %s against %s"
L["shadow"] = "暗影" -- Needs review
-- L["shadowflame"] = "shadowflame"
-- L["shadowfrost"] = "shadowfrost"
-- L["shadowlight"] = "shadowlight"
-- L["shadowstorm"] = "shadowstorm"
-- L["shadowstrike"] = "shadowstrike"
-- L["Show Minimap Icon"] = "Show Minimap Icon"
-- L["Sort by School"] = "Sort by School"
-- L["spellfire"] = "spellfire"
-- L["spellfrost"] = "spellfrost"
-- L["spellshadow"] = "spellshadow"
-- L["spellstorm"] = "spellstorm"
-- L["spellstrike"] = "spellstrike"
-- L["stormstrike"] = "stormstrike"
-- L["SUPPRESS_DMG_DESC"] = "Damage spell schools checked below WILL NOT be included in the tooltip."
-- L["SUPPRESS_HEAL_DESC"] = "Healing spell schools checked below WILL NOT be included in the tooltip."
-- L["Suppression Options"] = "Suppression Options"
-- L["SUPPRESS_MISC_DESC"] = "Miscellaneous Suppressions"
-- L["SUPPRESS_NOTES_DESC"] = "Suppression by selected schools only works if 'Sort by Schools' is turned on in the Display Options. Turning ALL schools on or off will still work, however."
-- L["SUPPRESS_OPTIONS_DESC"] = "Options pertaining to the suppression of spell schools in the toolip. Note that these are independent of whether data is being gathered for these schools or not."
-- L["Take Screenshot"] = "Take Screenshot"
-- L["Tooltip Auto-hide Delay"] = "Tooltip Auto-hide Delay"
-- L["TOOLTIP_DELAY_DESC"] = "Time (in seconds) that the tooltip will remain after moving mouse away"
-- L["Tooltip Scale"] = "Tooltip Scale"
-- L["TOOLTIP_SCALE_DESC"] = "Slide to change the scale of the tooltip"
-- L["TRACK_AGAINSTME_DESC"] = "Check to track hits against me"
-- L["Track Damage"] = "Track Damage"
-- L["TRACK_DAMAGE_DESC"] = "Check to track damage"
-- L["TRACK_DETECT_SP"] = "If checked, HitCrit will disable when superbuffs/vehicles are active"
-- L["Track Environmental"] = "Track Environmental"
-- L["TRACK_ENVIRONMENTAL_DESC"] = "Check to track environmental damage against me"
-- L["Track Healing"] = "Track Healing"
-- L["TRACK_HEALING_DESC"] = "Check to track healing"
-- L["Track Hits Against Me"] = "Track Hits Against Me"
-- L["Tracking Options"] = "Tracking Options"
-- L["TRACKING_OPTIONS_DESC"] = "Options that change the way data is gathered"
-- L["Track Low Level"] = "Track Low Level"
-- L["TRACK_LOWLEVEL_DESC"] = "Check to track data against low level mobs"
-- L["Track PvP"] = "Track PvP"
-- L["TRACK_PVP_DESC"] = "Check to track PvP combat"
-- L["Track Vulnerable"] = "Track Vulnerable"
-- L["TRACK_VULNERABLE_DESC"] = "Check to track data against vulnerable targets"
-- L["Turn off Superbuff Alerts"] = "Turn off Superbuff Alerts"
-- L["Version : "] = "Version : "
-- L["with"] = "with"
-- L["Yes"] = "Yes"
-- L["You are no longer in a vehicle, but are still superbuffed. HitCrit remains disabled."] = "You are no longer in a vehicle, but are still superbuffed. HitCrit remains disabled."
-- L["You are no longer in a vehicle. HitCrit re-enabled."] = "You are no longer in a vehicle. HitCrit re-enabled."
-- L["You are no longer superbuffed. HitCrit re-enabled."] = "You are no longer superbuffed. HitCrit re-enabled."
-- L["You are now in a vehicle (doing higher than normal damage). HitCrit disabled."] = "You are now in a vehicle (doing higher than normal damage). HitCrit disabled."
-- L["You are now superbuffed (doing higher than normal damage). HitCrit disabled."] = "You are now superbuffed (doing higher than normal damage). HitCrit disabled."

