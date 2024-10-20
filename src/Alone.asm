//note alone.rel is at $4398D85C
//that means that all addresses relative to alone.rel need to be adjusted by 0x4398D85C
//all addresses here should be between 0x4398D85C and 0x43BE0AE0
//in the future addresses for server.rel and client.rel will be pulled from here
//this file may also have to be split up soon

file = ALONE

origin $43ADA12C
include "GamePlay/Items.asm"

//origin $43ADCD14
//include "GamePlay/Accessories.asm"

//30 strings in this block: characters and descriptions
Text($43ADDF6C, "Block")
Text("Flei")
Text("Kirara")
Text("Polka")
Text("Pinoc")
Text("Cocotto")
Text("Kron")
Text("Doh")
Text("Misteka")
Text("Robot")
Text("Gant")
Text("Unicorn")
Text("KomKom")
Text("Paradaika")
Text("God")
//Text("They build to release their power.")
//Text("Fire tribes that can use various powers.")
//Text("Gem tribes that create barriers to block spells.")
//Text("Green tribes that are good at drawing out the power of the earth.")
//Text("Doll tribes that can heal wounds and poisons well.")
//Text("Egg tribes that hide in their shells and release their powers.")
//Text("Typhoon tribes that can use the wind to blow and spit.")
//Text("Clay tribes that can change shape and transform in various ways.")
//Text("Invisible tribes that can deceive enemies by becoming invisible.")
//Text("Robot tribes that are good at manipulating tools.")
//Text("They can see through buildings with guts and physical strength.")
//Text("A swordsman like a swift breeze.")
//Text("They use antennas An insect tribe that shoots electricity.")
//Text("A mysterious squid tribe with strange eyes.")
//Text("An entity of the human race (necessary for playing as a god).")

//origin $43ADE4B0
//include "GamePlay/Connection.asm"

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

Text($43B408F4, "Error code: [%d]") //cool

origin $43B40DFC
include "GamePlay/LocationsInGame.asm"

origin $43B43334
include "GamePlay/Skills.asm"

//origin $43B43334
//include "GamePlay/Monsters.asm"

origin $43B54374
include "GamePlay/Action.asm"

Text($43B56F74, "Croats Village")
Text("Horo's Emergency Center")
Text("Kanel Town")
Text("Croro Ruins")
Text("Illumina Town")
Text("Kiro Town")
Text("Valk Town")

Text($43B57214, "%s: %sBoru") //check

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

//Text($43B6899C, "")

Text($43B6B4F4, "Move undefined: %s returned 0.")
