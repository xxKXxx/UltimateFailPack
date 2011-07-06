-- GatherMate Locale
-- Please use the Localization App on WoWAce to Update this
-- http://www.wowace.com/projects/gathermate2/localization

local L = LibStub("AceLocale-3.0"):NewLocale("GatherMate2", "esES") or LibStub("AceLocale-3.0"):NewLocale("GatherMate", "esMX")
if not L then return end

L["Add this location to Cartographer_Waypoints"] = "Añadir esta posición a Cartographer_Waypoints"
L["Add this location to TomTom waypoints"] = "Añadir esta posición a los puntos de ruta (waypoints) de TomTom"
L["Always show"] = "Mostrar siempre"
L["Archaeology"] = "Arqueología"
L["Archaeology filter"] = "Filtro de Arqueologia"
L["Are you sure you want to delete all nodes from this database?"] = "Estás seguro de que quieres borrar todos los nodos de esta base de datos?"
L["Are you sure you want to delete all of the selected node from the selected zone?"] = "Estás seguro de que quieres borrar los nodos seleccionados de la zona seleccionada?"
L["Auto Import"] = "Auto importar"
L["Auto import complete for addon "] = "Auto importar completo para el addon."
L["Automatically import when ever you update your data module, your current import choice will be used."] = "Importa automáticamente cuando actualizas el módulo de datos, se aplicarán las opciones actuales de importación."
L["CLEANUP_RADIUS_DESC"] = "El radio en metros en el cual se eliminarán los nodos duplicados. Por defectos son |cffffd20050|r metros para Extraer gas y |cffffd20015|r metros para lo demás. Estas opciones también se siguen al añadir nodos."
L["Cataclysm"] = "Cataclismo"
L["Cleanup Complete."] = "Limpieza Completa"
L["Cleanup Database"] = "Limpiar Base de Datos"
L["Cleanup radius"] = "Radio de limpieza"
L["Cleanup your database by removing duplicates. This takes a few moments, be patient."] = "Limpia la Base de datos eliminando duplicados. Esto llevará un tiempo, se paciente."
L["Cleanup_Desc"] = "Con el tiempo, tu base de datos puede verse sobrepoblada. Limpiar la base de datos implica buscar nodos de la misma profesión que están muy próximos y pueden ser colapsados en un único nodo."
L["Clear database selections"] = "Borra las base de datos seleccionadas"
L["Clear node selections"] = "Limpiar nodos seleccionados"
L["Clear zone selections"] = "Borra Seleccion de Zonas"
L["Color of the tracking circle."] = "Color del circulo de rastreo"
L["Control various aspects of node icons on both the World Map and Minimap."] = "Controla varios aspectos de los iconos de los nodos tanto el el mapa Mundial como en el minimapa."
L["Conversion_Desc"] = "Conversion_desc  Convierte los datos existentes de GatherMate en formato GatherMate2"
L["Convert Databses"] = "Convertir Bases de Datos"
L["DATABASE_LOCKING_DESC"] = "El bloqueo de base da datos permite congelar el estado de una base de datos. Una vez bloqueada no es posible añadir, borrar o modificar la base de datos. Esto incluye la limpieza y la importación."
L["DELETE_ENTIRE_DESC"] = "Esto ignorará el bloqueo de la Base de Datos y borrará todos los nodos de todas las zonas de las Bases de datos seleccionadas."
L["DELETE_SPECIFIC_DESC"] = "Elimina todos los nodos seleccionados de la zona seleccionada. Debes desbloquear la Base de datos para que esto funcione."
L["Database Locking"] = "Bloquear Base de Datos"
L["Database Maintenance"] = "Mantenimiento de la Base de Datos"
L["Database locking"] = "Bloquear Base de Datos"
L["Databases to Import"] = "Bases de Datos a Importar"
L["Databases you wish to import"] = "Bases de Datos que quieres importar"
L["Delete"] = "Borrar"
L["Delete Entire Database"] = "Borrar Toda la Base de Datos"
L["Delete Specific Nodes"] = "Borrar Nodos Específicos"
L["Delete selected node from selected zone"] = "Borrar nodos seleccionados de la zona seleccionada"
L["Display Settings"] = "Opciones de pantalla"
L["Engineering"] = "Ingeniería"
L["Expansion"] = "Expansión"
L["Expansion Data Only"] = "Solo datos de la expansión"
L["FAQ"] = "FAQ"
L["FAQ_TEXT"] = [=[|cffffd200
Acabo de instalar GatherMate, pero no veo ningún nodo en mis mapas. ¿Que hago mal?
|r
GatherMate no viene con datos por sí mismo. Cuando recoges plantas, picas menas, recoges gas o pescas, GatherMate actualizará el mapa y marcará el nuevo recurso. Por si acaso, revisa tus Opciones de Pantalla.

|cffffd200
Veo nodos en el mapa del Mundo, pero no en el minimapa! ¿que hago mal ahora?
|r
A |cffffff78Minimap Button Bag|r (y posiblemente a otros Addons) les gusta devorar todos los botones que se ponen el el Minimapa. Desactívalos.

|cffffd200
Como o donde puedo conseguir datos ya existentes?
|r
Puedes importar datos existentes en GatherMate de dos formas:

1. |cffffff78GatherMate_Data|r - Este Addon continee toda la información recogida por Wowhead y se actualiza semanalmente. Hay opciones para auto-actualizar.

2. |cffffff78GatherMate_CartImport|r - Este addon permite importar tus bases de datos existentes en los módulos de |cffffff78Cartographer_<Profesión>|r en GatherMate. Para que esto funcione, necesitas tener activos a la vez tanto los módulso de |cffffff78Cartographer_<Profesión>|r como GatherMate_CartImport.

Ten en cuenta que importar datos en GatherMate no es un proceso automático. Debes ser tú quien entre en la sección de Importar Datos y pulse en el botón de "Importar".

Esto se diferencia de |cffffff78Cartographer_Data|r en que el usuario tiene la opción de como y cuando quiere modificar los datos, |cffffff78Cartographer_Data|r cuando se carga simplemente sobreescribirá los datos existentes en la base de datos actual de Gathermate por los importados sin dar ningún aviso.

|cffffd200
Podeis añadir soporte para mostrar la posición de cosas como los buzones y los maestros de vuelo?
|r
La respuesta es no. Sin embargo, otro autor de addons puede crear un addon o modulo para ello. El núcleo de GatherMate no lo hará.

|cffffd200
He encontrado un fallo! Donde puedo informar de él?
|r
Puedes informar de bugs o enviar sugerencias a |cffffff78http://www.wowace.com/forums/index.php?topic=10990.0|r

También puedes encontrar a los autores en |cffffff78irc://irc.freenode.org/wowace|r

Cuando informes de un bug, asegúrate de incluir los |cffffff78pasos para poder reproducir el fallo|r, si es posible proporciona cualquier |cffffff78mensaje de error|r con datos adiciones (como los que proporciona buggrab). Informa también del |cffffff78número de revisión|r de GatherMate en el que se produce el problema e informa si estás utilizando el |cffffff78cliente Inglés u otro|r.

|cffffd200
Quien escribió este Addon tan molón?
|r
Kagaro, Xinhuan, Nevcairiel y Ammo]=]
L["Failed to load GatherMateData due to "] = "Fallo al cargar GatherMateData debido a"
L["Filter_Desc"] = "Elige los tipos de nodo que deseas mostrar en el mapa del Mundo y minimapa. Los nodos no seleccionados seguirán siendo registrados en la base de datos."
L["Filters"] = "Filtros"
L["Fish filter"] = "Filtrar Bancos de pesca"
L["Fishes"] = "Bancos de Pesca"
L["Fishing"] = "Pesca"
L["Frequently Asked Questions"] = "Preguntas Frecuentes"
L["Gas Clouds"] = "Nubes de gas"
L["Gas filter"] = "Filtrar gas"
L["GatherMate Conversion"] = "Conversion de Gathermate"
L["GatherMate Pin Options"] = "Opciones de Señalización de GatherMate"
L["GatherMate data has been imported."] = "los datos de Gathermate han sido importados"
L["GatherMate2Data has been imported."] = "GatherMate2Datos han sido importados"
L["GatherMateData has been imported."] = "Se han importado GatherMateData."
L["General"] = "General"
L["Herb Bushes"] = "Arbustos"
L["Herb filter"] = "Filtrar plantas"
L["Herbalism"] = "Herboristería"
L["Icon Alpha"] = "Transparencia del Icono"
L["Icon Scale"] = "Escala del Icono"
L["Icon alpha value, this lets you change the transparency of the icons. Only applies on World Map."] = "Valor de transparencia del icono. Sólo se aplica al Mapa del Mundo."
L["Icon scaling, this lets you enlarge or shrink your icons on both the World Map and Minimap."] = "Escalado del Icono, este permite ampliar o reducir tus iconos tanto en el Mapa del Mundo como en el Minimapa."
L["Icons"] = "Iconos"
L["Import Data"] = "Importar Datos"
L["Import GatherMate2Data"] = "Importar GatherMate2Datos"
L["Import GatherMateData"] = "Importar GatherMateData"
L["Import Options"] = "Opciones de Importación"
L["Import Style"] = "Estilo de Importación"
L["Importing_Desc"] = "Importar permite a GatherMate conseguir datos de nodos de otras fuentes además del propio mundo de juego. Tras importar datos, puedes necesitar realizar una limpieza de la base de datos."
L["Keybind to toggle Minimap Icons"] = "Definir tecla para activar/desactivar Iconos en el minimapa."
L["Load GatherMate2Data and import the data to your database."] = "Cargar GatherMate2Data e importar a tu base de datos"
L["Load GatherMateData and import the data to your database."] = "Carga GatherMateData e importa los datos en tu base de datos"
L["Merge"] = "Fusionar"
L["Merge will add GatherMate2Data to your database. Overwrite will replace your database with the data in GatherMate2Data"] = "Combinar agregará GatherMate2Data a su base de datos. Sobrescribir sustituirá su la base de datos con los datos en GatherMate2Data"
L["Merge will add GatherMateData to your database. Overwrite will replace your database with the data in GatherMateData"] = "Fusionar añadirá los datos de GatherMateData a tu Base de datos. Sobreescribir reemplazará tu base de datos con los datos en GatherMateData"
L["Mine filter"] = "Filtrar Menas"
L["Mineral Veins"] = "Filones de mineral"
L["Minimap Icon Tooltips"] = "Ventanas Emergentes de los iconos del Minimapa"
L["Mining"] = "Minería"
L["Never show"] = "No mostrar nunca"
L["Only import selected expansion data from WoWDB"] = "Importar sólo datos de la expansión seleccionada de los datos de WoWDB"
L["Only import selected expansion data from WoWhead"] = "Solo importar la expansion seleccionada de WoWhead"
L["Only while tracking"] = "Sólo al rastrear"
-- L["Only with digsite"] = "Only with digsite"
L["Only with profession"] = "Sólo al tener la profesión"
L["Overwrite"] = "Sobreescribir"
L["Processing "] = "Procesando"
L["Select All"] = "Seleccionar todo"
L["Select Database"] = "Selecciona Base de Datos"
L["Select Databases"] = "Selecciona Base de datos "
L["Select Node"] = "Selecciona Nodo"
L["Select None"] = "No seleccionar nada"
L["Select Zone"] = "Seleccionar Zona"
L["Select Zones"] = "Selecciona Zonas"
L["Select all databases"] = "Selecciona todas las bases de datos"
L["Select all nodes"] = "Selecciona todos los nodos"
L["Select all zones"] = "Selecciona todas las Zonas"
L["Select the archaeology nodes you wish to display."] = "Selecciona los nodos de Arqueologia que tu deseas visualizar"
L["Select the fish nodes you wish to display."] = "Selecciona los nodos de pesca que deseas ver."
L["Select the gas clouds you wish to display."] = "Selecciona las nubes de gas que deseas ver."
L["Select the herb nodes you wish to display."] = "Selecciona los nodos de hierbas que deseas ver."
L["Select the mining nodes you wish to display."] = "Selecciona los nodos de menas que deseas ver."
L["Select the treasure you wish to display."] = "Selecciona los nodos de tesoro que deseas ver."
L["Selected databases are shown on both the World Map and Minimap."] = "Las bases de datos seleccionadas se mostrarán tanto en el Mapa del Mundo como el Minimapa."
L["Show Archaeology Nodes"] = "Muestra Los nodos de Arqueologia"
L["Show Databases"] = "Mostrar Bases de Datos"
L["Show Fishing Nodes"] = "Mostrar Nodos de pesca"
L["Show Gas Clouds"] = "Mostrar Nubes de Gas"
L["Show Herbalism Nodes"] = "Mostrar Nodos de Herboristería"
L["Show Minimap Icons"] = "Mostrar iconos en el Minimapa"
L["Show Mining Nodes"] = "Mostrar Nodos de Minería"
L["Show Nodes on Minimap Border"] = "Mostrar nodos en el borde del Minimapa"
L["Show Tracking Circle"] = "Mostrar círculo de rastreo"
L["Show Treasure Nodes"] = "Mostrar nodos de tesoro"
L["Show World Map Icons"] = "Mostrar iconos en el Mapa del Mundo"
L["Shows more Nodes that are currently out of range on the minimap's border."] = "Muestra más nodos, que están fuera de visión, en el borde del minimapa. "
L["The Burning Crusades"] = "The Burning Crusades"
L["The Frozen Sea"] = "El Mar Gélido"
L["The North Sea"] = "El Mar del Norte"
L["The distance in yards to a node before it turns into a tracking circle"] = "La distancia en metros a un nodo antes de que se convierta en un círculo de rastreo"
L["Toggle showing Minimap icon tooltips."] = "Activa/desactiva mostrar ventanas emergentes en los iconos del Minimapa."
L["Toggle showing Minimap icons."] = "Activa/desactiva mostrar iconos de Minimapa"
L["Toggle showing World Map icons."] = "Activa/desactiva mostrar iconos en el Mapa Muncial"
L["Toggle showing archaeology nodes."] = "Alterna Mostrar Nodos de Arqueologia"
L["Toggle showing fishing nodes."] = "Activa/desactiva mostrar nodos de pesca."
L["Toggle showing gas clouds."] = "Activa/desactiva mostrar nubes de gas."
L["Toggle showing herbalism nodes."] = "Activa/desactiva mostrar nodos de herboristería."
L["Toggle showing mining nodes."] = "Activa/desactiva mostrar nodos de minería."
L["Toggle showing the tracking circle."] = "Activa/desactiva mostrar el círculo de rastreo."
L["Toggle showing treasure nodes."] = "Activa/desactiva mostrar nodos de tesoro."
L["Tracking Circle Color"] = "Color del círculo de rastreo"
L["Tracking Distance"] = "Distancia de rastreo"
L["Treasure"] = "Tesoros"
L["Treasure filter"] = "Filtrar Tesoros"
L["Wrath of the Lich King"] = "Wrath of the Lich King"


local NL = LibStub("AceLocale-3.0"):NewLocale("GatherMate2Nodes", "esES") or LibStub("AceLocale-3.0"):NewLocale("GatherMateNodes", "esMX")
if not NL then return end

NL["'Small Obsidian Chunk"] = "Pequeño trozo Obsidiana"
NL["Abundant Bloodsail Wreckage"] = "Restos de los Velasangre Abundantes"
NL["Abundant Firefin Snapper School"] = "banco de Pargo de Fuego Abundante "
NL["Abundant Oily Blackmouth School"] = "banco bocanegra graso Abundante "
NL["Adamantite Bound Chest"] = "Cofre reforzado con adamantita"
NL["Adamantite Deposit"] = "Depósito de adamantita"
NL["Adder's Tongue"] = "Lengua víboris"
NL["Albino Cavefish School"] = "Banco de cavernosos albinos"
NL["Algaefin Rockfish School"] = "Banco de aletalgas de roca"
NL["Ancient Lichen"] = "Liquen Antiguo"
NL["Arcane Vortex"] = "Vórtice Arcano"
NL["Arctic Cloud"] = "Nube ártica"
NL["Arthas' Tears"] = "Lágrimas de Arthas"
NL["Azshara's Veil"] = "Velo de Azshara"
NL["Battered Chest"] = "Cofre maltrecho"
NL["Battered Footlocker"] = "Baúl maltrecho"
NL["Black Lotus"] = "Loto negro"
NL["Blackbelly Mudfish School"] = "Banco de pezfangos panzanegra"
NL["Blindweed"] = "Carolina"
NL["Blood of Heroes"] = "Sangre de héroes"
NL["Bloodpetal Sprout"] = "Brote pétalo de sangre"
NL["Bloodsail Wreckage"] = "Restos de los Velasangre"
NL["Bloodthistle"] = "Cardo de sangre"
NL["Bloodvine"] = "sangreviña  (Viñasangre ) (videraiz?)"
NL["Bluefish School"] = "Banco de pezazules"
NL["Borean Man O' War School"] = "Banco de carabelas boreales"
NL["Bound Adamantite Chest"] = "Cofre de Adamanita blindado"
NL["Bound Fel Iron Chest"] = "Cofre reforzado con hierro vil"
NL["Brackish Mixed School"] = "Banco mixto salobre"
NL["Briarthorn"] = "Brezospina"
NL["Brightly Colored Egg"] = "Brightly Colored Egg"
NL["Bruiseweed"] = "Hierba cardenal"
NL["Buccaneer's Strongbox"] = "Caja fuerte de bucanero"
NL["Burial Chest"] = "Sarcófago"
NL["Cinder Cloud"] = "Nube de ceniza"
NL["Cinderbloom"] = "Flor de ceniza"
NL["Cobalt Deposit"] = "Depósito de cobalto"
NL["Copper Vein"] = "Filón de cobre"
NL["Dark Iron Deposit"] = "Depósito de hierro negro"
-- NL["Dark Iron Treasure Chest"] = "Dark Iron Treasure Chest"
NL["Deep Sea Monsterbelly School"] = "Deep Sea Monsterbelly School"
NL["Dented Footlocker"] = "Baúl abollado"
NL["Draenei Archaeology Find"] = "Hallazgo arqueológico de los draenei"
NL["Dragon's Teeth"] = "Dientes de dragón"
NL["Dragonfin Angelfish School"] = "Banco de peces ángel aletadragón"
NL["Dreamfoil"] = "Hojasueño"
NL["Dreaming Glory"] = "Gloria de ensueño"
NL["Dwarf Archaeology Find"] = "Hallazgo arqueológico de los enanos"
NL["Earthroot"] = "Raíz de tierra"
NL["Elementium Vein"] = "Filón de elementium"
NL["Everfrost Chip"] = "Esquirla de siemprescarcha"
NL["Fadeleaf"] = "Pálida"
NL["Fangtooth Herring School"] = "Banco de arenques colmillo"
NL["Fathom Eel Swarm"] = "Banco de anguilas de las profundidades"
NL["Fel Iron Chest"] = "Cofre de hierro vil"
NL["Fel Iron Deposit"] = "Depósito de hierro vil"
NL["Felmist"] = "Bruma Vil"
NL["Felsteel Chest"] = "Cofre de acero vil"
NL["Feltail School"] = "Banco de colaviles"
NL["Felweed"] = "Hierba vil"
NL["Firebloom"] = "Flor de fuego"
NL["Firefin Snapper School"] = "Banco de pargos de fuego"
NL["Firethorn"] = "Espino de fuego"
NL["Flame Cap"] = "Seta flamígera"
NL["Floating Debris"] = "Restos flotando"
NL["Floating Wreckage"] = "Restos de un naufragio"
NL["Floating Wreckage Pool"] = "Floating Wreckage Pool"
NL["Fossil Archaeology Find"] = "Hallazgo arqueológico fósil"
NL["Frost Lotus"] = "Frost Lotus"
NL["Frozen Herb"] = "Hierba congelada"
NL["Ghost Mushroom"] = "Champiñón fantasma"
NL["Giant Clam"] = "Almeja gigante"
NL["Glacial Salmon School"] = "Banco de salmones glaciales"
NL["Glassfin Minnow School"] = "Banco de pezqueñines aletacristal"
NL["Glowcap"] = "Fluochampiñón"
NL["Gold Vein"] = "Filón de oro"
NL["Goldclover"] = "Trébol de oro"
NL["Golden Sansam"] = "Sansam dorado"
NL["Goldthorn"] = "Espina de oro"
NL["Grave Moss"] = "Musgo de tumba"
NL["Greater Sagefish School"] = "Banco de sabiolas superiores"
NL["Gromsblood"] = "Gromsanguina"
NL["Heartblossom"] = "Flor de corazón"
NL["Heavy Fel Iron Chest"] = "Cofre pesado de hierro vil"
NL["Highland Guppy School"] = "Banco de lebistes de las Tierras Altas"
NL["Highland Mixed School"] = "Banco mixto de las Tierras Altas"
NL["Huge Obsidian Slab"] = "Gran Trozo Obsidiana"
NL["Icecap"] = "Setelo"
NL["Icethorn"] = "Espina de hielo"
NL["Imperial Manta Ray School"] = "Banco de mantas raya imperiales"
NL["Incendicite Mineral Vein"] = "Filón de mineral de incendicita"
NL["Indurium Mineral Vein"] = "Filón de mineral de indurio"
NL["Iron Deposit"] = "Depósito de hierro"
NL["Khadgar's Whisker"] = "Mostacho de Khadgar"
NL["Khorium Vein"] = "Filón de korio"
NL["Kingsblood"] = "Sangrerregia"
NL["Large Battered Chest"] = "Cofre maltrecho grande"
NL["Large Darkwood Chest"] = "Cofre grande de Leñoscuro"
NL["Large Iron Bound Chest"] = "Cofre reforzado con hierro grande"
NL["Large Mithril Bound Chest"] = "Cofre reforzado con mitril grande"
NL["Large Obsidian Chunk"] = "Gran Trozo obsidiana"
NL["Large Solid Chest"] = "Cofre macizo grande"
NL["Lesser Bloodstone Deposit"] = "Depósito de sangrita inferior"
NL["Lesser Firefin Snapper School"] = "Lesser Firefin Snapper School"
NL["Lesser Floating Debris"] = "Lesser Floating Debris"
NL["Lesser Oily Blackmouth School"] = "Lesser Oily Blackmouth School"
NL["Lesser Sagefish School"] = "Lesser Sagefish School"
NL["Lichbloom"] = "Flor exánime"
NL["Liferoot"] = "Vidarraíz"
NL["Mageroyal"] = "Marregal"
NL["Mana Thistle"] = "Cardo de maná"
-- NL["Maplewood Treasure Chest"] = "Maplewood Treasure Chest"
NL["Mithril Deposit"] = "Depósito de mitril"
NL["Moonglow Cuttlefish School"] = "Moonglow Cuttlefish School"
NL["Mossy Footlocker"] = "Baúl mohoso"
NL["Mountain Silversage"] = "Salviargenta de montaña"
NL["Mountain Trout School"] = "Banco de truchas de montaña"
NL["Muddy Churning Water"] = "Batido de agua Fangoso (?)"
NL["Mudfish School"] = "Banco de peces barro"
NL["Musselback Sculpin School"] = "Banco de peces escorpión mejillón"
-- NL["Mysterious Camel Figurine"] = "Mysterious Camel Figurine"
NL["Nerubian Archaeology Find"] = "Hallazgo arqueológico nerubiano"
NL["Netherbloom"] = "Flor abisal"
NL["Nethercite Deposit"] = "Depósito de abisalita"
NL["Netherdust Bush"] = "Arbusto de polvo abisal"
NL["Netherwing Egg"] = "Huevo de Ala Abisal"
NL["Nettlefish School"] = "Banco de medusas"
NL["Night Elf Archaeology Find"] = "Hallazgo arqueológico de los elfos de la noche"
NL["Nightmare Vine"] = "Vid pesadilla"
NL["Obsidian Chunk"] = "Restos (bloque) Obsidiana"
NL["Obsidium Deposit"] = "Depósito de obsidium"
NL["Oil Spill"] = "Vertido de petróleo"
NL["Oily Blackmouth School"] = "Banco de bocanegras grasos"
NL["Ooze Covered Gold Vein"] = "Filón de oro cubierto de moco"
NL["Ooze Covered Mithril Deposit"] = "Filón de mitril cubierto de moco"
NL["Ooze Covered Rich Thorium Vein"] = "Filón de torio enriquecido cubierto de moco"
NL["Ooze Covered Silver Vein"] = "Filón de plata cubierto de moco"
NL["Ooze Covered Thorium Vein"] = "Filón de torio cubierto de moco"
NL["Ooze Covered Truesilver Deposit"] = "Filón de veraplata cubierta de moco"
NL["Orc Archaeology Find"] = "Hallazgo arqueológico de los orcos"
NL["Other Archaeology Find"] = "Otros Hallazgos de Arqueologia"
NL["Patch of Elemental Water"] = "Patch of Elemental Water"
NL["Peacebloom"] = "Flor de paz"
NL["Plaguebloom"] = "Flor de peste"
NL["Pool of Fire"] = "Piscina de fuego"
NL["Practice Lockbox"] = "Arcón de prácticas"
NL["Primitive Chest"] = "Cofre primitivo"
NL["Pure Saronite Deposit"] = "Deposito de Saronita Puro"
NL["Pure Water"] = "Agua pura"
NL["Purple Lotus"] = "Loto cárdeno"
NL["Pyrite Deposit"] = "Depósito de pirita"
NL["Ragveil"] = "Velada"
NL["Rich Adamantite Deposit"] = "Depósito rico en adamantita"
NL["Rich Cobalt Deposit"] = "Depósito de cobalto rico"
NL["Rich Elementium Vein"] = "Filón de elementium rico"
NL["Rich Obsidium Deposit"] = "Depósito de obsidium rico"
NL["Rich Pyrite Deposit"] = "Depósito de pirita rico"
NL["Rich Saronite Deposit"] = "Depósito de saronita rico"
NL["Rich Thorium Vein"] = "Filón de torio enriquecido"
NL["Runestone Treasure Chest"] = "Arqueta de piedras rúnicas"
NL["Sagefish School"] = "Banco de sabiolas"
NL["Saronite Deposit"] = "Depósito de saronita"
NL["Scarlet Footlocker"] = "Baúl Escarlata"
NL["School of Darter"] = "Banco de dardos"
NL["School of Deviate Fish"] = "Banco de peces descarriados"
NL["School of Tastyfish"] = "Banco de pezricos"
NL["Schooner Wreckage"] = "Schooner Wreckage"
-- NL["Shipwreck Debris"] = "Shipwreck Debris"
-- NL["Silken Treasure Chest"] = "Silken Treasure Chest"
NL["Silver Vein"] = "Filón de plata"
NL["Silverbound Treasure Chest"] = "Arqueta reforzada con plata"
NL["Silverleaf"] = "Hojaplata"
NL["Small Obsidian Chunk"] = "Pequeño fragmento de obsidiana"
NL["Small Thorium Vein"] = "Filón pequeño de torio"
NL["Solid Chest"] = "Cofre macizo"
NL["Solid Fel Iron Chest"] = "Cofre sólido de hierro vil"
NL["Sorrowmoss"] = "Musgopena"
NL["Sparse Firefin Snapper School"] = "Sparse Firefin Snapper School"
NL["Sparse Oily Blackmouth School"] = "Sparse Oily Blackmouth School"
NL["Sparse Schooner Wreckage"] = "Sparse Schooner Wreckage"
NL["Sporefish School"] = "Banco de pecesporas"
NL["Steam Cloud"] = "Nube de vapor"
NL["Steam Pump Flotsam"] = "Restos flotantes de bomba de vapor"
NL["Stonescale Eel Swarm"] = "Banco de anguilas escama pétrea"
NL["Stormvine"] = "Viñaviento"
NL["Strange Pool"] = "Strange Pool"
NL["Stranglekelp"] = "Alga estranguladora"
-- NL["Sturdy Treasure Chest"] = "Sturdy Treasure Chest"
NL["Sungrass"] = "Solea"
NL["Swamp Gas"] = "Gas de pantano"
NL["Talandra's Rose"] = "Rosa de Talandra"
NL["Tattered Chest"] = "Cofre ajado"
NL["Teeming Firefin Snapper School"] = "Banco de pargos de fuego abundante"
NL["Teeming Floating Wreckage"] = "Teeming Floating Wreckage"
NL["Teeming Oily Blackmouth School"] = "Banco de bocanegras grasos abundante"
NL["Terocone"] = "Teropiña"
NL["Tiger Lily"] = "Lirio atigrado"
NL["Tin Vein"] = "Filón de estaño"
NL["Titanium Vein"] = "Filón de titanio"
NL["Tol'vir Archaeology Find"] = "Hallazgo arqueológico de los Tol'vir"
NL["Troll Archaeology Find"] = "Hallazgo arqueológico de los trols"
NL["Truesilver Deposit"] = "Depósito de veraplata"
NL["Twilight Jasmine"] = "Jazmín Crepuscular"
NL["Un'Goro Dirt Pile"] = "Montón de porquería de Un'Goro"
NL["Vrykul Archaeology Find"] = "Hallazgo arqueológico de los vrykuls"
NL["Waterlogged Footlocker"] = "Baúl con marcas de agua"
NL["Waterlogged Wreckage"] = "Restos con marcas de agua"
NL["Whiptail"] = "Colátigo"
NL["Wicker Chest"] = "Cofre de mimbre"
NL["Wild Steelbloom"] = "Acérita salvaje"
NL["Windy Cloud"] = "Nube ventosa"
NL["Wintersbite"] = "Ivernalia"

