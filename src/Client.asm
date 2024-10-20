//note client.rel is at $43BE0BCC
//that means that all addresses relative to client.rel need to be adjusted by 0x43BE0BCC
//all addresses here should be between 0x43BE0BCC and 0x43D44B84
//this file may also have to be split up soon

file = CLIENT

origin $43C8D5F4
include "GamePlay/Items.asm"

origin $43C8FBE4
include "GamePlay/Accessories.asm"

//30 strings in this block: characters and descriptions
Text($43C90E3C, "Block")
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

origin $43CE264C
include "GamePlay/Skills.asm"

origin $43CEF044
include "GamePlay/Action.asm"

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
