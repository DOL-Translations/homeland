//note client.rel is at $43BE0BCC
//that means that all addresses relative to client.rel need to be adjusted by 0x43BE0BCC
//all addresses here should be between 0x43BE0BCC and 0x43D44B84

file = CLIENT

origin $43C8D5F4
include "GamePlay/Items.asm"

origin $43C8FBE4
include "GamePlay/Accessories.asm"

origin $43C90E3C
include "GamePlay/Mascot.asm"

Text($43C91280, "Success")

origin $43C91380
include "GamePlay/Connection.asm"

Text($43C96CEC, "Crab")
Text("Tiger")
Text("Frog")
Text("Bear")
Text("Rabbit")
Text("Tokoyami Cave")
Text("Croats Field")
Text("Kanel Field")
Text("Underpass")
Text("Croro Maze")
Text("Wind Cape")
Text("Kiro Mine")
Text("Googoo Cave")
Text("Kiro Cliffs")
Text("Trek Mountain")
Text("Polka Cape")
Text("Desert Ruins")
Text("Elza")

origin $43CC9D84
include "GamePlay/LocationsRealWorld.asm"

origin $43CD47CC
include "GamePlay/LocationsRealWorld2.asm"

//origin $43CD4840
//Text("Africa")
//Text("Antarctica")
//Text("Asia")
//Text("Europe")
//Text("Middle East")
//Text("North America")
//Text("Oceania")
//Text("South America")
//Text("Other")
//Text("Asia: Japan")

origin $43CDDE08
include "GamePlay/ItemDescriptions.asm"

//Client does not use locations in game
//"GamePlay/LocationsInGame.asm"

Text($43CE1EDC, "Error Code: [%d]\n%s")

Text($43CE1FBC, "Online Adventure: ")
Text("God Play: ")
Text("\n")
Text("IP Address: ")

Text($43CE20B4, "Game Code")

origin $43CE264C
include "GamePlay/Skills.asm"

Text($43CE42DC, "Life has been swapped!")

Text($43CE49E4, "A strong attack from Holding Hands: %s Pow")

Text($43CE5A80, "Discard %s?")

Text($43CE5BE4, "%s: %s+%s Pow")
Text("%s: %s Pow")

origin $43CEF044
include "GamePlay/Action.asm"

Text($43CF16BC, "Croats Village")
Text("Horo Rest Stop")
Text("Kanel Town")
Text("Croro Ruins")
Text("Illumina Town")
Text("Kiro Town")
Text("Valk Town")
Text("Attack")
Text("Defense")
Text("Strgth")
Text("Speed")
Text("Mind")

Text($43CF1778, "Stats unchanged.")

Text($43CF3ED0, "Clear Points")
Text(" pnts")
Text(" Str:")
Text(" Spd:")
Text("Mind:")
Text(" Atk:")
Text(" Def:")
Text("Life:")
Text(" Pow:")
Text("/")
Text("To Next Level: ")
Text("Current Points: ")
Text("%")

Text($43CF3F7C, "Level")
Text($43CF3F84, "EXP: ")

Text($43CF4110, "  Life: %3d/%3d")
Text(" Power: %3d/%3d")
Text("           %3d")
Text("Strength")
Text("   Speed")
Text("    Mind")
Text("  Attack: %3d")
Text(" Defense: %3d")

Text($43CF4274, " Str")
Text(" Spd")
Text("Mind")
Text(" Lvl")
Text("  Hp")
Text(" Max")
Text("%+4d")
Text(" Pow")
Text(":")
Text("%+3d")

Text($43CF6854, "Region:")
Text("Distance:")
Text("Name:")
Text("Players:")
Text("Active: ")
Text("Password:")
Text("Sort by:")
Text(" ")
Text("Confirm")
Text("Return")

Text($43CF68F4, "Search this region for a HomeLand GameCube.")
Text("Search by distance to adventure.")
Text("Search by name of God player.")
Text("Search by number of players in the adventure.")
Text("Search by time passed since the adventure began.")
Text("Search by password protected.")
Text("Sort by keyword.\nDisplays first 50 results.")
Text("Search for a HomeLand with these filters.")
Text("Return without searching for a HomeLand.")

Text($43CF6B98, "Contains")
Text("Any")
Text("Same region")
Text("Nearest first")
Text("{5 players")
Text("{10 players")
Text("10+ players")
Text("20+ players")
Text("30+ players")
Text("About to start")
Text("Less than 1 hour")
Text("Less than 5 hours")
Text("Less than 10 hours")
Text("Yes")
Text("No")
Text("Players")
Text("Total players")
Text("World uptime")
Text("Guiding forces")
Text("%s") //"%s %s", patched to not show prefecture

//asm patch to not show prefecture
origin $43C51A5C; db $7f, $65, $db, $78

//asm patch to adjust prefecture list; incomplete
//origin $43CD78EC;
//db $00, $00, $00, $00, $00, $00, $00, $01
//db $00, $00, $00, $00, $00, $00, $00, $01
//db $00, $00, $00, $00, $00, $00, $00, $01
//db $00, $00, $00, $00, $00, $00, $00, $01
//db $00, $00, $00, $00, $00, $00, $00, $01
//db $00, $00, $00, $00, $00, $00, $00, $01
//db $00, $00, $00, $00, $00, $00, $00, $01
//db $00, $00, $00, $00, $00, $00, $00, $01
//db $00, $00, $00, $00, $00, $00, $00, $01
//db $00, $00, $00, $00, $00, $00, $03, $16

Text($43CF6FF4, "Anyone")
Text("Friends")
Text("No One")

Text($43CF83AC, "It will finish in %s minutes.")

origin $43CF88B4
include "GamePlay/Object.asm"

Text($43CFB140, " GO!")

origin $43CFB30C
include "GamePlay/ObjectSelect.asm"
