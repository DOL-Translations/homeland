//note alone.rel is at $4398D85C
//that means that all addresses relative to alone.rel need to be adjusted by 0x4398D85C
//all addresses here should be between 0x4398D85C and 0x43BE0AE0
//in the future addresses for server.rel and client.rel will be pulled from here

file = ALONE

origin $43ADA12C
include "GamePlay/Items.asm"

origin $43ADCD14
include "GamePlay/Accessories.asm"

origin $43ADDF6C
include "GamePlay/Mascot.asm"

Text($43ADE3B0, "Success")

origin $43ADE4B0
include "GamePlay/Connection.asm"

//check these(!)
Text($43AE3E0C, "Mr. Crab")
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

origin $43AFDD9C
include "GamePlay/LocationsRealWorld.asm"

TextLegacy($43B242B4, RED) ; db "B Button", BLACK, ": Quit & Return" ; fill 11

origin $43B3C820
include "GamePlay/ItemDescriptions.asm"

Text($43B408F4, "Error Code: [%d]\n%s")

origin $43B40DFC
include "GamePlay/LocationsInGame.asm"

origin $43B43334
include "GamePlay/Skills.asm"

Text($43B44FC4, "Life has been swapped!")

Text($43B49A4C, "A strong attack from Holding Hands: %s Pow")

Text($43B4AABC, "Discard %s?")

Text($43B4AC20, "%s: %s+%s Pow")
Text("%s: %s Pow")

origin $43B54374
include "GamePlay/Action.asm"

origin $43B454DC
include "GamePlay/ObjectSelect.asm"

origin $43B457F4
include "GamePlay/Object.asm"

Text($43B56F74, "Croats Village")
Text("Horo's Emergency Center")
Text("Kanel Town")
Text("Croro Ruins")
Text("Illumina Town")
Text("Kiro Town")
Text("Valk Town")

Text($43B53EA4, "Attack")
Text("Defense")
Text("Strgth")
Text("Speed")
Text("Mind")

Text($43B53EF0, "Stats unchanged.")

Text($43B57214, "%s: %s Boru") //check

//Text($43B572DB, " pnts")

Text($43B58B90, "Clear Points")
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

Text($43B58C44, "EXP: ")

//Text($43B58F57, "Level")
//Text("Exp")

Text($43B58DD0, "  Life: %3d/%3d")
Text(" Power: %3d/%3d")
Text("           %3d")
Text("Strength")
Text("   Speed")
Text("    Mind")
Text("  Attack: %3d")
Text(" Defense: %3d")

Text($43B58F34, " Str")
Text(" Spd")
Text("Mind")
Text(" Lvl")
Text("  Hp")
Text(" Max")
Text("%+4d")
Text(" Pow")
Text(":")
Text("%+3d")

//Text($43B5B39B, "Boru") //check

Text($43B5B4F8, "Clear Points: ")
Text($43B5B5D0, "Clear Points: ")
Text($43B5B6A0, "Clear Points: ")

origin $43B68654
include "GamePlay/ActionGod.asm"

origin $43B6899C
include "GamePlay/SkillsGod.asm"

Text($43B6B4F4, "Move undefined: %s returned 0.")
