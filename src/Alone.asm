//note alone.rel is at $4398D85C
//that means that all addresses relative to alone.rel need to be adjusted by 0x4398D85C
//all addresses here should be between 0x4398D85C and 0x43BE0AE0
//in the future addresses for server.rel and client.rel will be pulled from here
//this file may also have to be split up soon

origin $43ADCD14
include "GamePlay/Items.asm"

//30 strings in this block: characters and descriptions
Text($43ADDF6C, "Block")
Text("Frey")
Text("Kirara")
Text("Polka")
Text("Pinock")
Text("Cocotte")
Text("Kron")
Text("Nendou")
Text("Mystic")
Text("Robo")
Text("Gant")
Text("Unicorn")
Text("ComCom")
Text("Paradica")
Text("God")
//Text("They grow and release their powers.")
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

origin $00150C54
include "GamePlay/Connection.asm"

//check these(!)
Text($43AE3E0C, "Mr. Crab")
Text("Mr. Tiger")
Text("Mr. Frog")
Text("Mr. Bear")
Text("Mr. Rabbit")
Text("City of Darkness")
Text("Cloots Heights")
Text("Kaneru Heights")
Text("Local Route")
Text("Super Speedway")
Text("Wind's Edge")
Text("Kiro's So-Call")
Text("Guguru's Cave")
Text("Kiro Mountain")
Text("Toreku Mountain")
Text("Poruka's Edge")
Text("Desert Ruins")
Text("Eruza")

origin $43AFDD9C
include "GamePlay/LocationsRealWorld.asm"

Text($43B408F4, "Error code: [%d]") //cool

origin $43B40DFC
include "GamePlay/LocationsInGame.asm"

origin $43B43334
include "GamePlay/Monsters.asm"

origin $43B54374
include "GamePlay/Battle.asm"

Text($43B56F74, "Cloots Village")
Text("Holo's Emergency Center")
Text("Kaneru Town")
Text("Uru Ruins")
Text("Irumina Town")
Text("Kiro Town")
Text("Baraku Town")

Text($43B57214, "%s: %sBoru") //check

Text($43B572DB, " pnts")

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

Text($43B58F57, "Level")
Text("Exp")

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

Text($43B5B39B, "Boru") //check

Text($43B5B4F8, "Clear Points: ")
Text($43B5B5D0, "Clear Points: ")
Text($43B5B6A0, "Clear Points: ")

//Text($43B6899C, "")

Text($43B6B4F4, "Move undefined: %s returned 0.")
