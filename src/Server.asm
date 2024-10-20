//note server.rel is at $49A0D938
//that means that all addresses relative to server.rel need to be adjusted by 0x49A0D938
//all addresses here should be between 0x49A0D938 and 0x49BABEDC
//this file may also have to be split up soon

file = SERVER

origin $49B07F38
include "GamePlay/Items.asm"

origin $49B0AB20
include "GamePlay/Accessories.asm"

//30 strings in this block: characters and descriptions
Text($49B0BD78, "Block")
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

origin $49B0C2BC
include "GamePlay/Connection.asm"

Text($49B11988, "Mr. Crab")
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

origin $49B36960
include "GamePlay/LocationsRealWorld.asm"

origin $49B46C70
include "GamePlay/LocationsInGame.asm"

origin $49B49178
include "GamePlay/Skills.asm"

//Server does not use Action commands
//"GamePlay/Action.asm"
