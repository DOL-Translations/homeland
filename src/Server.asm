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

Text($49B0C1BC, "Success")

origin $49B0C2BC
include "GamePlay/Connection.asm"

Text($49B11988, "Crab")
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

Text($49B326D0, "%02dhrs %02dmins %02dsecs")
Text("None")

Text($49B34448, "Elza Tower 10F")
Text("Elza Tower 7F")
Text("Elza Tower 4F")

origin $49B36960
include "GamePlay/LocationsRealWorld.asm"

//origin $49B4141C
//Text("Africa")
//Text("Antarctica")
//Text("Asia")
//Text("Europe")
//Text("Middle East")
//Text("North America")
//Text("Oceania")
//Text("South America")
//Text("Other")
//Text("Asia (Japan)")

origin $49B413A8
include "GamePlay/LocationsRealWorld2.asm"

Text($49B46690, "Error Code: [%d]\n%s")

Text($49B46770, "Online Adventure: ")
Text("God Play: ")
Text("Online")
Text("Offline")
Text("\n")
Text("IP Address: ")

Text($49B46888, "Game Code")

origin $49B46C70
include "GamePlay/LocationsInGame.asm"

origin $49B49178
include "GamePlay/Skills.asm"

Text($49B4A13C, "Quester")

Text($49B4B524, "%s has entered the world.")
Text("%s has left the world.")

Text($49B4DA98, "Boru was sent from %s.")
Text("%s has sent you %s.")

Text($49B4FB54, "The Ark")
Text("Please wait..")

Text($49B50910, "%s has logged out.")

origin $49B55438
include "GamePlay/ActionGod.asm"

Text($49B55EE8, "Ending in %s seconds...")

Text($49B56220, "Start in 10 minutes")
Text("Start in 20 minutes")
Text("Start in 30 minutes")
Text("Start in 40 minutes")
Text("Start in 50 minutes")
Text("Start in 60 minutes")
Text("Start now")

Text($49B56548, "One")
Text("Two")
Text("Player")
Text("hiding.")
Text("Event now.")

Text($49B567D4, "%s (%d-%d)")
Text("%s (%d)")
Text("%s (?)")

origin $49B56978
include "GamePlay/SkillsGod.asm"

Text($49B56EB8, "Name:")
Text("Local Time:")
Text("Players:")
Text("Password:")
Text("Questers Helped:")

Text($49B57080, "Location:")
Text("Password:")
Text("Comment:")
Text("Start:")
Text("Repeat:")
Text("Confirm")
Text("Return")
Text("Create a HomeLand where your GameCube is located.")
Text("Only people who know this password\nwill be able to enter your HomeLand.")
Text("Introduce your HomeLand.")
Text("Wait time until you can go on an adventure.")
Text("When the adventure ends,\nchoose to create another HomeLand immediately.")
Text("Create your HomeLand with these settings.")
Text("Return to your room.")

Text($49B57304, "None")
Text("Some")
Text("%s") //"%s %s", patched to not show prefecture
Text("%s")

//asm patch to not show prefecture
origin $49AAF97C; db $7f, $c5, $f3, $78

//asm patch to adjust prefecture list; incomplete
//origin $49B444C8;
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

Text($49B595F8, "Starting Point")

Text($49B5BD78, "Move undefined: %s returned 0.")

origin $49B5C2E8
include "GamePlay/ObjectSelect.asm"

origin $49B5C508
include "GamePlay/Object.asm"
