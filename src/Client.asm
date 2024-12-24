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

origin $43C91380
include "GamePlay/Connection.asm"

Text($43C96CEC, "Mr. Crab")
Text("Mr. Tiger")
Text("Mr. Frog")
Text("Mr. Bear")
Text("Mr. Rabbit")
Text("Tokoyami Cave")
Text("Croats Field")
Text("Kanel Field")
Text("Underpass")
Text("Croro Maze")
Text("Wind Cape")
Text("Kiro Mine")
Text("Googoo's Cave")
Text("Kiro Cliffs")
Text("Trek Mountain")
Text("Polka Cape")
Text("Desert Ruins")
Text("Elza")

origin $43CC9D84
include "GamePlay/LocationsRealWorld.asm"

//Client does not use locations in game
//"GamePlay/LocationsInGame.asm"

Text($43CE20B4, "Game Code")

origin $43CE264C
include "GamePlay/Skills.asm"

origin $43CEF044
include "GamePlay/Action.asm"

Text($43CF16BC, "Croats Village")
Text("Horo's Emergency Center")
Text("Kanel Town")
Text("Croro Ruins")
Text("Illumina Town")
Text("Kiro Town")
Text("Valk Town")

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

origin $43CF6854
include "GamePlay/Matchmaking.asm"

origin $43CF88B4
include "GamePlay/Object.asm"

Text($43CFB140, " GO!")

origin $43CFB30C
include "GamePlay/ObjectSelect.asm"
