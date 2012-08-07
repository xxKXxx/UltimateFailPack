-- TradeSkillMaster_Auctioning Locale - ruRU
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Auctioning/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Auctioning", "ruRU")
if not L then return end

-- L[""] = ""
L["12 hours"] = "12 часов"
L["24 hours"] = "24 часа"
L["48 hours"] = "48 часов"
L["A category contains groups with similar settings and acts like an organizational folder. You may override default settings by category (and then override category settings by group)."] = "Категория содержит группы с одинаковыми настройками и предназначена для упорядочивания групп. Вы можете заменить настройки по умолчанию настройками категории, а их, в свою очередь, настройками группы."
L["Add a new player to your blacklist."] = "Добавить игрока в черный список."
L["Add a new player to your whitelist."] = "Добавить нового игрока в белый список"
L["Add category"] = "Добавить категорию"
-- L["Added %s items to %s automatically because they contained the group name in their name. You can turn this off in the options."] = ""
-- L["Added the following items to %s automatically because they contained the group name in their name. You can turn this off in the options."] = ""
L["Add group"] = "Добавить группу"
-- L["Add Item to New Group"] = ""
-- L["Add Item to Selected Group"] = ""
-- L["Add Item to TSM_Auctioning"] = ""
L["Add player"] = "Добавить игрока"
L["Add/Remove"] = "Добавить/удалить"
L["Add/Remove Groups"] = "Добавить/убрать группы"
L["Add/Remove Items"] = "Добавить/Убрать предметы"
L["Advanced"] = "Расширенный"
-- L["Advanced Price Settings (Reset Method)"] = ""
L["A group contains items that you wish to sell with similar conditions (stack size, fallback price, etc).  Default settings may be overridden by a group's individual settings."] = "Группа состоит из предметов, которые вы хотите продавать на одинаковых условиях (количество в связке, резервная цена, и т.д.). Настройки по умолчанию могут быть заменены индивидуальными настройками для группы."
-- L["All auctions of this duration and below will be canceled when you press the \"Cancel Low Duration Auctions\" button"] = ""
L["ALT"] = "ALT"
L["Any auctions at or below the selected duration will be ignored. Selecting \"<none>\" will cause no auctions to be ignored based on duration."] = "Все лоты, с длительностью меньше выбранной, будут игнорироваться. Если выбрано \"ничего\", то лоты не будут игнорироваться по длительности."
-- L["Are you SURE you want to delete all the groups in this category?"] = ""
L["Are you sure you want to delete the selected profile?"] = "Вы точно хотите удалить выбранный профиль?"
L["Are you SURE you want to delete this category?"] = "Вы ТОЧНО хотите удалить эту категорию?"
L["Are you SURE you want to delete this group?"] = "Вы ТОЧНО хотите удалить эту группу?"
-- L["At fallback price and not undercut."] = ""
-- L["Auction Buyout"] = ""
-- L["Auction Buyout (Stack Price):"] = ""
L["Auction Defaults"] = "Настройки аукциона по умолчанию."
-- L["Auction has been bid on."] = ""
L["Auctioning Group:"] = "Аукционная группа:"
L["Auctioning Groups/Options"] = "Аукционные группы/Настройки"
-- L["Auctioning has found %s group(s) with an invalid threshold/fallback. Check your chat log for more info. Would you like Auctioning to fix these groups for you?"] = ""
L["Auctioning will follow the 'Advanced Price Settings' when the market goes below %s."] = "Auctioning будет следовать \"Дополнительным настройкам цены\" когда рынок падает ниже %s."
L["Auctioning will never post your auctions for below %s."] = "Auctioning никогда не будет выставлять лоты дешевле %s."
L["Auctioning will post at %s when you are the only one posting below %s."] = "Auctioning будет выставлять лоты за %s когда вы - единственный продающий дешевле %s."
-- L["Auctioning will reset items where you can make a profit of at least %s per item by buying at most %s items for a maximum of %s, paying no more than %s for any single item."] = ""
L["Auctioning will undercut your competition by %s. When posting, the bid of your auctions will be set to %s percent of the buyout."] = "Auctioning будет демпинговать конкурентов на %s. При выставлении лота ставка будет составлять %s процентов цены выкупа."
-- L["Auctions"] = ""
L["Auctions will be posted at %s when the market goes below your threshold."] = "Лоты будут выставлять по цене %s когда рынок опускается ниже граничного значения."
L["Auctions will be posted at your fallback price of %s when the market goes below your threshold."] = "Лоты будут выставляться по резервной цене %s когда рынок опускается ниже граничного значения."
L["Auctions will be posted at your threshold price of %s when the market goes below your threshold."] = "Лоты будут выставляться по граничной цене %s когда рынок опускается ниже граничного значения."
L["Auctions will be posted for %s hours in stacks of %s. A maximum of %s auctions will be posted."] = "Лоты будут выставляться на %s часов связками по %s штук. Максимальное число выставленных лотов %s ."
L["Auctions will be posted for %s hours in stacks of up to %s. A maximum of %s auctions will be posted."] = "Лоты будут выставляться на %s часов связками до %s штук. Максимальное число выставленных лотов %s ."
L["Auctions will not be posted when the market goes below your threshold."] = "Лоты не будут выставляться, когда рынок опускается ниже граничного значения"
L["Beginner"] = "Новичек"
-- L["Bid:"] = ""
L["Bid percent"] = "Процент ставки"
L["Blacklist"] = "Черный список"
-- L["(blacklisted)"] = ""
L["Blacklists allows you to undercut a competitor no matter how low their threshold may be. If the lowest auction of an item is owned by somebody on your blacklist, your threshold will be ignored for that item and you will undercut them regardless of whether they are above or below your threshold."] = "Черный список позволит вам перебивать лоты конкурента вне зависимости от того, насколько насколько низка цена выкупа его лотов. Если самый дешевый лот выставлен игроком из вашего черного списка, ваша \"нижняя\" будет игнорироваться и лот вашего конкурента будет перебит в любом случае."
L["Block Auctioneer while scanning"] = "Блокировать Auctioneer во время сканирования"
-- L["Buyout"] = ""
-- L["Buyout:"] = ""
L["Cancel"] = "Отмена"
-- L["Cancel ALL Current Auctions"] = ""
-- L["Cancel Auctions"] = ""
-- L["Cancel Auctions Matching Filter"] = ""
L["Cancel auctions with bids"] = "Отменять лоты со ставками"
-- L["Cancel Filter"] = ""
L["Canceling"] = "Отменяю"
-- L["Canceling all auctions."] = ""
-- L["Canceling auction which you've undercut."] = ""
-- L["Canceling %s / %s"] = ""
-- L["Canceling to repost at higher price."] = ""
-- L["Canceling to repost at reset price."] = ""
-- L["Cancel Low Duration Auctions"] = ""
-- L["Cancels auctions you've been undercut on according to the rules setup in Auctioning."] = ""
-- L["Cancel Scan Finished"] = ""
-- L["Cancel to repost higher"] = ""
L["Categories / Groups"] = "Категории / группы"
L["Category name"] = "Название категории."
L["Category Overrides"] = "Опции замены для категорий"
-- L["Cheapest auction below threshold."] = ""
-- L["Check this box to include this group in the scan."] = ""
-- L["Click on the \"Fix\" button to have Auctioning turn this group into a category and create appropriate groups inside the category to fix this issue. This is recommended unless you'd like to fix the group yourself. You will only be prompted with this popup once per session."] = ""
-- L["Click to reset this item to this target price."] = ""
-- L["Click to show auctions for this item."] = ""
-- L["Common Search Term"] = ""
L["Completely disables this group. This group will not be scanned for and will be effectively invisible to Auctioning."] = "Полностью отключить группу. Эта группа не будет сканироваться и будет невидима для модуля Auctioning."
L["Copy From"] = "Копировать из"
L["Copy the settings from one existing profile into the currently active profile."] = "Копировать настройки из существующего профиля в активный."
-- L["Could not find item's group."] = ""
L["Create a new empty profile."] = "Создать новый пустой профиль"
L["Create Category / Group"] = "Создать категорию / группу."
L["Create Macro and Bind ScrollWheel (with selected options)"] = "Создать макрос и забиндить его на колесико мыши (с выбранными модификаторами)"
L["CTRL"] = "CTRL"
L["Current Profile:"] = "Активный профиль:"
L["Custom market reset price. If the market goes below your threshold, items will be posted at this price."] = "Назначенная цена сброса рынка. Если рынок опускается ниже граничного значения, лоты будут выставляться по этой цене."
L["Custom Reset Price (gold)"] = "Особая цена для сброса (в золоте)"
L["Custom Value"] = "Назначить величину"
L["Data Imported to Group: %s"] = "Импортированные в группу данные: %s"
L["Default"] = "По умолчанию"
L["Delete"] = "Удалить"
-- L["Delete All Groups In Category"] = ""
-- L["Delete all groups inside this category. This cannot be undone!"] = ""
L["Delete a Profile"] = "Удалить профиль"
-- L["Delete category"] = ""
L["Delete existing and unused profiles from the database to save space, and cleanup the SavedVariables file."] = "Удалить существующие и неиспользуемые профили для экономии места и очистить файл SavedVariables."
L["Delete group"] = "Удалить группу"
L["Delete this category, this cannot be undone!"] = "Удалить эту категорию. Это действие нельзя отменить!"
L["Delete this group, this cannot be undone!"] = "Удалить эту группу. Это действие нельзя отменить!"
L["Determines which order the group / category settings tabs will appear in."] = "Порядок отображения вкладок в настройках групп / категорий."
L["Did not post %s because your fallback (%s) is invalid. Check your settings."] = "%s не выставлен, резервная цена (%s) неверна. Проверьте настройки."
L["Did not post %s because your fallback (%s) is lower than your threshold (%s). Check your settings."] = "%s не был выставлен, т.к. \"верхняя\" цена (%s) меньше \"нижней\" (%s) цены. Проверьте настройки."
L["Did not post %s because your threshold (%s) is invalid. Check your settings."] = "%s не выставлен, граничная цена (%s) неверна. Проверьте настройки."
-- L["Disable All"] = ""
L["Disable auto cancelling"] = "Выключить авто отмену"
L["Disable automatically cancelling of items in this group if undercut."] = "Выключить автоматическую отмену лотов этой группы, если вас подрезали."
L["Disable posting and canceling"] = "Отключить выставление и отмену."
-- L["Disables canceling of auctions which can not be reposted (ie the market price is below your threshold)."] = ""
L["Done Canceling"] = "Отмена завершена"
--[==[ L[ [=[Done Posting

Total value of your auctions: %s
Incoming Gold: %s]=] ] = "" ]==]
--[==[ L[ [=[Done Scanning!

Could potentially reset %d items for %s profit.]=] ] = "" ]==]
L["Don't Import Already Grouped Items"] = "Не импортировать предметы, уже находящиеся в группах."
L["Don't Post Items"] = "Не выставлять предмет"
L["Down"] = "Вниз"
-- L["Duration"] = ""
-- L["Edit Post Price"] = ""
-- L["Enable All"] = ""
L["Enable sounds"] = "Включить звуки."
-- L["Enter a filter into this box and click the button below it to cancel all of your auctions that contain that filter (without scanning)."] = ""
-- L["Error with scan. Scanned item multiple times unexpectedly. You can try restarting the scan. Item:"] = ""
L["Existing Profiles"] = "Существующие профили"
L["Export"] = "Экспорт"
L["Export Group Data"] = "Экспорт данных группы."
L["Exports the data for this group. This allows you to share your group data with other TradeSkillMaster_Auctioning users."] = "Экспортирует данные этой группы. Таким образом можно поделиться данными настроек группы с другими пользователями TradeSkillMaster."
-- L["Fallback:"] = ""
L["Fallback price"] = "Резервная цена"
L["First Tab in Group / Category Settings"] = "Какую вкладку показывать первой в настройках категорий/групп."
L["Fixed Gold Amount"] = "Фиксированное количество золота"
-- L["Fixed invalid groups."] = ""
-- L["Fix (Recommended)"] = ""
L["General"] = "Общие"
L["General Price Settings (Undercut / Bid)"] = "Общие настройки цены (подрезание / ставка)"
L["General Settings"] = "Основные настройки"
-- L["Group:"] = ""
L["Group/Category named \"%s\" already exists!"] = "Группа/Категория с названием \"%s\" уже существует! "
L["Group Data"] = "Данные группы."
L["Group name"] = "Название группы"
L["Group named \"%s\" already exists! Item not added."] = "Группа с названием \"%s\" уже существует! Предмет не был добавлен."
L["Group named \"%s\" does not exist! Item not added."] = "Группа с названием \"%s\" не существует! Предмет не был добавлен."
L["Group Overrides"] = "Замены группы"
L["Groups in this Category:"] = "Группы в этой Категории:"
L["Help"] = "Помощь"
L["Hide advanced options"] = "Скрыть расширенные настройки"
L["Hide help text"] = "Скрыть текст помощи"
L["Hide poor quality items"] = "Скрыть \"серые\" предметы"
L["Hides advanced auction settings. Provides for an easier learning curve for new users."] = "Скрыть продвинутые настройки аукциона. Предоставляет более простой период обучения для новичков."
L["Hides all poor (gray) quality items from the 'Add items' pages."] = "Скрывает все предметы \"серого\" качества на странице \"Добавить предметы\""
L["Hides auction setting help text throughout the options."] = "Скрывает подсказки в настройках."
L["How long auctions should be up for."] = "Сколько должен длится аукцион."
L["How low the market can go before an item should no longer be posted. The minimum price you want to post an item for."] = "Нижняя граница, до которой может дойти рынок. Минимальная цена, по которой вы хотите продавать предмет."
L["How many auctions at the lowest price tier can be up at any one time."] = "Сколько лотов с минимальной среди конкурентов ценой должно быть выставлено одновременно."
L["How many items should be in a single auction, 20 will mean they are posted in stacks of 20."] = "Количество предметов в связке. 20 обозначает, что предметы будут выставляться связками по 20 штук."
L[ [=[How much of a difference between auction prices should be allowed before posting at the second highest value.

For example. If Apple is posting Runed Scarlet Ruby at 50g, Orange posts one at 30g and you post one at 29g, then Oranges expires. If you set price threshold to 30% then it will cancel yours at 29g and post it at 49g next time because the difference in price is 42% and above the allowed threshold.]=] ] = "Минимальный % разницы между двумя самыми дешевыми лотами, по дистижению которого лоты будут выставляться по второй снизу цене.    Пример. Если Иван выставляет Хлыстохвост по 50г, Пётр по 30г, а вы по 29г, а потом лот Петра снимается с торгов - вы недополучаете 21г прибыли.Если вы выставите данное значение в 30%, ваш лот будет выставлен за 49г, потому что разница в цене составляет 42%, что выше 30%"
L["How much to undercut other auctions by, format is in \"#g#s#c\" but can be in any order, \"50g30s\" means 50 gold, 30 silver and so on."] = "На сколько подрезать конкурентов. Формат \"#g#s#c\" например \"50g30s\" обозначает 50золота 30серебра."
-- L["If all items in this group have the same phrase in their name, use this phrase instead to speed up searches. For example, if this group contains only glyphs, you could put \"glyph of\" and Auctioning will search for that instead of each glyph name individually. Leave empty for default behavior."] = ""
-- L["If checked, the items in this group will be included when running a reset scan and the reset scan options will be shown."] = ""
-- L["If checked, will cancel auctions that can be reposted for a higher amount (ie you haven't been undercut and the auction you originally undercut has expired)."] = ""
-- L["If enabled, when the lowest auction is by somebody on your whitelist, it will post your auction at the same price. If disabled, it won't post the item at all."] = ""
-- L["If enabled, when you create a new group, your bags will be scanned for items with names that include the name of the new group. If such items are found, they will be automatically added to the new group."] = ""
L[ [=[If the market price is above fallback price * maximum price, items will be posted at the fallback * maximum price instead.

Effective for posting prices in a sane price range when someone is posting an item at 5000g when it only goes for 100g.]=] ] = "Если рыночная цена выше (резервной * максимальную), Лоты будут выставляться по (резервной * максимальную).    Эффективно для продажи вещей по разумной цене, когда кто-то выставил вещь, стоящую 100г за 5000г.."
-- L["If you are using a % of something for threshold / fallback, every item in a group must evalute to the exact same amount. For example, if you are using % of crafting cost, every item in the group must have the same mats. If you are using % of auctiondb value, no items will ever have the same market price or min buyout. So, these items must be split into separate groups."] = ""
L["If you don't have enough items for a full post, it will post with what you have."] = "Если у вас недостаточно предметов для полного выставления, будет выставлено сколько есть."
-- L["Ignore"] = ""
L["Ignore low duration auctions"] = "Игнорировать лоты с малой длительностью."
L["Ignore stacks over"] = "Игнорировать связки больше чем"
L["Ignore stacks under"] = "Игнорировать связки меньше чем"
L["Import Auctioning Group"] = "Импорт аукционной группы."
L["Import Group Data"] = "Импорт данных группы."
-- L["Include in reset scan"] = ""
-- L["Info"] = ""
L["Invalid category name."] = "Неправильное имя категории."
L["Invalid group name."] = "Неправильное имя группы."
-- L["Invalid money format entered, should be \"#g#s#c\", \"25g4s50c\" is 25 gold, 4 silver, 50 copper."] = ""
L["Invalid percent format entered, should be \"#%\", \"105%\" is 105 percent."] = "Неверный формат процентов, должно быть \"#%\", к примеру \"105%\" это 105 процентов."
-- L["Invalid scan data for item %s. Skipping this item."] = ""
-- L["Invalid search term for group %s. Searching for items individually instead."] = ""
-- L["Invalid seller data returned by server."] = ""
-- L["Item"] = ""
L["Item failed to add to group."] = "Предмет не удалось добавить в группу"
-- L["Item/Group is invalid."] = ""
L["Items in this group:"] = "Предметы в этой группе:"
L["Items in this group will not be posted or canceled automatically."] = "Предметы в этой группе не будут автоматически выставляться или отменяться."
L["Items not in any group:"] = "Предметы, не принадлежащие к группам:"
L["Items that are stacked beyond the set amount are ignored when calculating the lowest market price."] = "Связки предметов больше заданного значения игнорируются при подсчете минимальной рыночной цены."
-- L["Log Info:"] = ""
-- L["Long (12 hours)"] = ""
L["long (2 - 12 hours)"] = "длительный (2-12 часов)"
-- L["Lowest auction by whitelisted player."] = ""
-- L["Lowest Buyout"] = ""
-- L["Lowest Buyout:"] = ""
L["Macro created and keybinding set!"] = "Макрос создан и назначен!"
L["Macro Help"] = "Помощь по макросам"
-- L["Make another after this one."] = ""
L["Management"] = "Управление"
-- L["% Market Value"] = ""
-- L["Match whitelist prices"] = ""
-- L["Maximum amount already posted."] = ""
L["Maximum price"] = "Максимальная цена"
-- L["Maximum price gap"] = ""
L["Maximum Price Settings (Fallback)"] = "Настройка максимальной цены (резервная цена)"
-- L["Max price per item"] = ""
-- L["Max quantity to buy"] = ""
-- L["Max reset cost"] = ""
-- L["Max Scan Retries (Advanced)"] = ""
-- L["Medium (2 hours)"] = ""
L["medium (30 minutes - 2 hours)"] = "средний (30 минут - 2 часа)"
L["Minimum Price Settings (Threshold)"] = "Настройки минимальной цены (границы рынка)"
-- L["Min reset profit"] = ""
L["Modifiers:"] = "Модификаторы:"
-- L["Must wait for scan to finish before starting to reset."] = ""
-- L["Name of New Group to Add Item to:"] = ""
L["Name of the new category, this can be whatever you want and has no relation to how the category itself functions."] = "Имя новой категории, может быть любым и не влияет на функциональность категории."
L["Name of the new group, this can be whatever you want and has no relation to how the group itself functions."] = "Имя новой группы, может быть любым и не влияет на функциональность группы."
L["New"] = "Новый"
L["New category name"] = "Новое имя категории"
L["New group name"] = "Новое имя группы"
-- L["No Items to Reset"] = ""
L["No name entered."] = "Не введено имя"
L["<none>"] = "<ничего>"
-- L["Not canceling auction at reset price."] = ""
-- L["Not canceling auction below threshold."] = ""
-- L["Not enough items in bags."] = ""
-- L["%% of %s"] = ""
L["Options"] = "Настройки"
L["Overrides"] = "Изменение настроек"
L["Per auction"] = "Предметов на один лот"
L["Percentage of the buyout as bid, if you set this to 90% then a 100g buyout will have a 90g bid."] = "Процентный размер ставки от выкупа. Если установить в 90%, лот с выкупом в 100г будет иметь ставку 90г."
L["Player name"] = "Имя персонажа"
L["Plays the ready check sound when a post / cancel scan is complete and items are ready to be posting / canceled (the gray bar is all the way across)."] = "Проигрывать звук \"Проверка готовности\" когда сканирование завершено и можно выставлять / отменять лоты."
-- L["Please don't move items around in your bags while a post scan is running! The item was skipped to avoid an incorrect item being posted."] = ""
-- L["Post"] = ""
L["Post at Fallback"] = "Выставить по резервной цене"
L["Post at Threshold"] = "Выставить по граничной цене"
-- L["Post Auctions"] = ""
L["Post cap"] = "Максимальное количество"
-- L["Posting at fallback."] = ""
-- L["Posting at reset price."] = ""
-- L["Posting at whitelisted player's price."] = ""
-- L["Posting at your current price."] = ""
-- L["Posting %s / %s"] = ""
-- L["Posting this item."] = ""
-- L["Post Scan Finished"] = ""
L["Post Settings (Quantity / Duration)"] = "Настройки выставления (количество/длительность)"
-- L["Posts items on the auction house according to the rules setup in Auctioning."] = ""
L["Post time"] = "Время лота"
-- L["Price gap too high."] = ""
-- L["Price Per Item"] = ""
-- L["Price Per Stack"] = ""
-- L["Price resolution"] = ""
L["Price threshold"] = "Ценовой порог"
L["Price to fallback too if there are no other auctions up, the lowest market price is too high."] = "Граничная цена, по которой выставляется предмет, если нет других продавцов или минимальная рыночная цена слишком высокая."
-- L["Processing Items..."] = ""
L["Profiles"] = "Профили"
-- L["Profit:"] = ""
-- L["Profit Per Item"] = ""
-- L["Quantity (Yours)"] = ""
L["Rename"] = "Переименовать"
L["Rename this category to something else!"] = "назвать жту категорию по-другому!"
L["Rename this group to something else!"] = "Измените название группы!"
-- L["Reset Auctions"] = ""
-- L["Reset Method"] = ""
L["Reset Profile"] = "Сброс профиля"
-- L["Reset Scan Finished"] = ""
-- L["Reset Scan Settings"] = ""
-- L["Resets the price of items according to the rules setup in Auctioning by buying other's auctions and canceling your own as necessary."] = ""
L["Reset the current profile back to its default values, in case your configuration is broken, or you simply want to start over."] = "Сбросить настройки активного профиля на настройки по умолчанию, если сломалась конфигурация или вы просто хотите начать все сначала."
-- L["Return to Summary"] = ""
-- L["Right-Click to add %s to your friends list."] = ""
-- L["Right click to do a custom cancel scan."] = ""
-- L["Right click to do a custom post scan."] = ""
-- L["Right click to do a custom reset scan."] = ""
L["Right click to override this setting."] = "Правый щелчок для перезаписи этой настройки."
L["Right click to remove the override of this setting."] = "Правый щелчок для отмены перезаписи этой настройки."
-- L["Running Scan..."] = ""
-- L["Save New Price"] = ""
L["Scanning"] = "Идёт сканирование"
-- L["Scanning Item %s / %s"] = ""
L["ScrollWheel Direction (both recommended):"] = "Направление прокрутки колесика (рекомендованы оба):"
L["Select Matches:"] = "Выбрать совпадения:"
L["Selects all items in either list matching the entered filter. Entering \"Glyph of\" will select any item with \"Glyph of\" in the name."] = "Выбрать все предметы в обоих списках, содержащие данный текст. Например, введите \"Символ\", чтобы выбрать все предметы с \"Символ\" в названии."
L["Seller"] = "Продавец"
-- L["Seller name of lowest auction for item %s was not returned from server. Skipping this item."] = ""
L["Set fallback as a"] = "Выставить резервную цену как "
-- L["Set max reset cost as a"] = ""
-- L["Set min reset price as a"] = ""
L["Set threshold as a"] = "Установить нижнюю границу как"
L["SHIFT"] = "SHIFT"
-- L["Shift-Right-Click to show the options for this item's Auctioning group."] = ""
-- L["Short (30 minutes)"] = ""
L["short (less than 30 minutes)"] = "короткий (меньше 30 минут)."
-- L["Show All Auctions"] = ""
L["Show group name in tooltip"] = "Показывать название группы в подсказке"
-- L["Show Item Auctions"] = ""
-- L["Show Log"] = ""
L["Shows the name of the group an item belongs to in that item's tooltip."] = "Показывать в подсказке название группы, в которой находится этот предмет."
-- L["%s item(s) to buy/cancel"] = ""
-- L["Skip"] = ""
L["Skip Item"] = "Пропустить предмет"
-- L["Smart canceling"] = ""
-- L["Smart group creation"] = ""
-- L["Stack Size"] = ""
-- L["Start Scan of Selected Groups"] = ""
-- L["Stop Scan"] = ""
-- L["Target Price"] = ""
-- L["Target Price:"] = ""
L[ [=[The below are fallback settings for groups, if you do not override a setting in a group then it will use the settings below.

Warning! All auction prices are per item, not overall. If you set it to post at a fallback of 1g and you post in stacks of 20 that means the fallback will be 20g.]=] ] = "Снизу представлены настройки резервной цены для групп, если вы не замените их настройками в группе, использоваться будут они.    Внимание! Все цены приведены для одного предмета, если вы выставляете резервную цену в 1г и выставляете связками по 20 штук, резервная цена для связки будет 20г"
L["The data you are trying to import is invalid."] = "Данные, которые вы пытаетесь импортировать, некорректны."
-- L["The maximum amount that you want to spend in order to reset a particular item. This is the total amount, not a per-item amount."] = ""
-- L["The minimum profit you would want to make from doing a reset. This is a per-item price where profit is the price you reset to minus the average price you spent per item."] = ""
L["The player \"%s\" is already on your blacklist."] = "Игрок \"%s\" уже находится в черном списке."
L["The player \"%s\" is already on your whitelist."] = "Игрок \"%s\" уже есть в вашем белом списке."
L["There are two ways of making clicking the Post / Cancel Auction button easier. You can put %s and %s in a macro (on separate lines), or use the utility below to have a macro automatically made and bound to scrollwheel for you."] = "Существует два способа облегчить нажатие кнопки выставления / отмены лота. Вы можете сделать макрос с %s и %s в отдельных строчках, или воспользоваться окошком снизу для автоматического создания и назначения макроса."
-- L["This controls how many times Auctioning will retry a query before giving up and moving on. Each retry takes about 2-3 seconds."] = ""
-- L["This determines what size range of prices should be considered a single price point for the reset scan. For example, if this is set to 1s, an auction at 20g50s20c and an auction at 20g49s45c will both be considered to be the same price level."] = ""
L["This dropdown determines what Auctioning will do when the market for an item goes below your threshold value. You can either not post the items or post at your fallback/threshold/a custom value."] = "Это выпадающее меню определяет, что Auctioning будет делать, когда рыночная цена предмета падает ниже граничной цены. Вы можете либо не выставлять предмет, либо выставлять по резервной / граничной / выбранной цене."
L["This feature can be used to import groups from outside of the game. For example, if somebody exported their group onto a blog, you could use this feature to import that group and Auctioning would create a group with the same settings / items."] = "Эта опция может использоваться для импорта групп из вне игры. Например, если кто-то разместить экспортированные данные своей аукционнной группы в блоге, с помощью этой опции вы сможете импортировать эти настройки себе для создания аукционной группы с такими же настройками/предметами."
-- L["This is the maximum amount you want to pay for a single item when reseting."] = ""
-- L["This is the maximum number of items you're willing to buy in order to perform a reset."] = ""
-- L["This item does not have any seller data."] = ""
-- L["This item is already in the \"%s\" Auctioning group."] = ""
-- L["This item will not be included in the reset scan."] = ""
-- L["Threshold:"] = ""
-- L["Time Left"] = ""
-- L["Toggle this box to enable / disable all groups in this category."] = ""
-- L["Total Cost"] = ""
-- L["TSM_Auctioning Group to Add Item to:"] = ""
L["<Uncategorized Groups>"] = "Группы без категорий"
L["Uncategorized Groups:"] = "Группы без категорий:"
L["Undercut by"] = "Подрезан "
-- L["Undercut by whitelisted player."] = ""
-- L["Undercutting competition."] = ""
L["Up"] = "Вверх"
L["Use per auction as cap"] = "Использовать количество предметов на 1 лот в качестве максимума"
-- L["Use the checkboxes to the left to select which groups you'd like to include in this scan."] = ""
-- L["When posting and canceling, ignore auctions with more than %s item(s) or less than %s item(s) in them. Ignoring the lowest auction if the price difference between the lowest two auctions is more than %s."] = ""
-- L["When posting, ignore auctions with more than %s items or less than %s items in them. Ignoring the lowest auction if the price difference between the lowest two auctions is more than %s. Items in this group will not be canceled automatically."] = ""
-- L["Which group in TSM_Auctioning to add this item to."] = ""
L["Whitelist"] = "Белый список"
-- L["(whitelisted)"] = ""
L["Whitelists allow you to set other players besides you and your alts that you do not want to undercut; however, if somebody on your whitelist matches your buyout but lists a lower bid it will still consider them undercutting."] = "Белые списки позволяют выбрать игроков, отличных от вас и ваших альтов, которых вы не хотите подрезать. Тем не менее, если кто-то из вашего белого списка выставляет лот с таким же выкупом, но более низкой ставкой, он будет всё равно считаться подрезающим."
L["Will bind ScrollWheelDown (plus modifiers below) to the macro created."] = "Назначит макрос на вращение колесика мыши вниз (с модификаторами, выбранными снизу) "
L["Will bind ScrollWheelUp (plus modifiers below) to the macro created."] = "Назначит макрос на вращение колесика мыши вверх (с модификаторами, выбранными снизу) "
L["Will cancel auctions even if they have a bid on them, you will take an additional gold cost if you cancel an auction with bid."] = "Будет отменять лоты, даже если на них сделана ставка. Это стоит дополнительных денег."
L["Would you like to load these options in beginner or advanced mode? If you have not used APM, QA3, or ZA before, beginner is recommended. Your selection can always be changed using the \"Hide advanced options\" checkbox in the \"Options\" page."] = "Открыть обычные или расширенные настройки? Если вы до этого не пользовались аддонами APM, QA3 или ZA, рекомендуется использовать обычные настройки. На странице \"Настройки\" в разделе \"Скрыть расширенные настройки\" можно изменить этот выбор."
L["You can change the active database profile, so you can have different settings for every character."] = "Вы можете сменить активный профиль базы данных, поэтому вы можете иметь разные настройки для каждого персонажа."
L["You can either create a new profile by entering a name in the editbox, or choose one of the already exisiting profiles."] = "Вы можете либо создать новый профиль, введя имя в поле, либо выбрать один из имеющихся."
L["You can not blacklist characters whom are on your whitelist."] = "Нельзя добавлять в черный список игроков из белого списка."
L["You can not blacklist yourself."] = "Нельзя добавить в черный список самого себя."
L["You can not whitelist characters whom are on your blacklist."] = "Нельзя добавлять в белый список игроков из черного списка."
L["You can set a fixed fallback price for this group, or have the fallback price be automatically calculated to a percentage of a value. If you have multiple different items in this group and use a percentage, the highest value will be used for the entire group."] = "Вы можете установить фиксированную резервную ену для этой группы, либо установить автоматический ее подсчет в качестве процента от цены. Если в группе много разных предметов и используется процент, для всей группы будет использоваться наивысшая величина."
-- L["You can set a fixed max reset cost, or have it be a percentage of some other value."] = ""
-- L["You can set a fixed min reset price, or have it be a percentage of some other value."] = ""
-- L["You can set a fixed threshold, or have it be a percentage of some other value."] = ""
L["You do not have any players on your blacklist yet."] = "В черном списке никого нет."
L["You do not have any players on your whitelist yet."] = "В белом списке пока никого нет."
L["You do not need to add \"%s\", alts are whitelisted automatically."] = "Добавлять \"%s\" не обязательно. Альты добавляются автоматически."
-- L["You don't any groups set to be included in a reset scan."] = ""
-- L["You don't any groups set up."] = ""
-- L["Your auction has not been undercut."] = ""
-- L["You've been undercut."] = ""