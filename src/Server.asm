//note server.rel is at $49A0D938
//that means that all addresses relative to server.rel need to be adjusted by 0x49A0D938
//all addresses here should be between 0x49A0D938 and 0x49BABEDC

file = SERVER

origin $49B07F38
include "GamePlay/Items.asm"

origin $49B0AB20
include "GamePlay/Accessories.asm"

origin $49B0BD78
include "GamePlay/Mascot.asm"

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

Text($49B46888, "Game Code")

origin $49B46C70
include "GamePlay/LocationsInGame.asm"

origin $49B49178
include "GamePlay/Skills.asm"

origin $49B55438
include "GamePlay/ActionGod.asm"

Text($49B56220, "Buy in 10 minutes.")
Text("Buy in 20 minutes.")
Text("Buy in 30 minutes.")
Text("Buy in 40 minutes.")
Text("Buy in 50 minutes.")
Text("Buy in 60 minutes.")
Text("Buy now.")

Text($49B56548, "One")
Text("Two")
Text("Player")
Text("hiding.")
Text("Event now.")

origin $49B56978
include "GamePlay/SkillsGod.asm"

Text($49B56EB8, "Name:")
Text("Local Time:")
Text("Players:")
Text("Password:")
Text("Help Number:")

Text($49B57080, "Location:")
Text("Password:")
Text("Comment:")
Text("Start:")
Text("Repeat:")
Text("Confirm")
Text("Return")
Text("Create a HomeLand where your GameCube is located.")
Text("Only people who know this password\nwill be able to enter your HomeLand.")
Text("Introduction to your HomeLand")
Text("Wait time until you can go on an adventure.")
Text("When the adventure ends,\ndo you want to create another HomeLand immediately?")
Text("Create your HomeLand with these settings.")
Text("Return to your room.")

origin $49B5C2E8
include "GamePlay/ObjectSelect.asm"

origin $49B5C508
include "GamePlay/Object.asm"
