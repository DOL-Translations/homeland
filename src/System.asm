// System text

// Start.dol
Text($00115982, " ON") ; fill 7
Text($0011598C, "  OFF") ; db $81, $E8 ; fill 5
Text($00115998, "It has been set") ; fill 5
Text($001159AE, " Memorize") ; fill 5
Text($001159BE, "  Reset") ; db $81, $E8 ; fill 7
Text($00115A54, "The disc cover is open.\nClose the disc cover to continue.") ; fill 20
Text($00115AA1, "Insert the\nHOMELAND Game Disc.") ; fill 31
Text($00115AE0, "The disc could not be read.\nRead the Nintendo GameCube instruction booklet for more") ; fill 1 //information.")
Text($00115B38, "An error has occurred.\nTurn the power off and refer the Nintendo GameCube instruction booklet for further instructions.")
Text($00115BC4, "Please wait..") ; fill 3

Text($00115BDC, "There is no Memory Card inserted in Slot A.")
Text($00115C0C, "There is no Memory Card inserted in Slot A.\nIf you continue,\nyou will not be able to save.")
Text($00115C80, "There is not enough available space in the Memory Card in Slot A.\n1 file and %d blocks are required to save the adventure.")
Text($00115CF8, "The game could not be saved because a regular Memory Card was not inserted in Slot A.\nPlease start over from Name Entry.")
Text($00115D84, "The Memory Card in Slot A is corrupted and must be formatted.\nPreviously saved data will be lost.\nFormat?")
//Text($00115E20, "??")
//Text($00115E9C, "Format?")
//Text($00115EF4, "??")
//Text($00115F0C, "The Memory Card in Slot A is broken and cannot be used.")
//Text($00115F48, "??") 
//Text($00115F84, "??") 

//Text($00115FF4, "The Memory Card in Slot A is broken and cannot be used.")
//Text($, "If you start the game, you will not be able to save")
//Text($, "The Memory Card in Slot A does not contain the data from when the game was started, so you cannot change the background.")
//Text($, "The Memory Card in Slot A does not contain the data from when the game was started, so the adventure cannot be read.")
//Text($, "A memory card is inserted into slot A.
//Text($, "The memory card in slot A could not be erased.
//Text($, "Could not read from memory card in slot A.
//Text($, "I have her notebook stored on the memory card in slot A. Do not remove the card or cut the green beans.
//Text($, "
//Text($, "

//Text($, "
//Text($, "
//Text($, "
//Text($, "
//Text($, "
//Text($, "
//Text($, "
//Text($, "
//Text($, "
//Text($, "

//Text($, "
//Text($, "
//Text($, "
//Text($, "
Text($001167D0, "Nintendo is not responsible for any damage caused by misuse of your personal information.") ; fill 28
Text($00116848, "When using the WaveBird (DOL-004) your personal authentication\ncould be leaked to others. Please connect a regular controller (DOL-003)\nbefore inputting any") ; fill 1//sensitive information.")
Text($001168E8, "Nintendo is not responsible for any damage caused by use of the WaveBird.") ; fill 24
Text($0011694C, "Please enter the IP Address of the GAMECUBE to connected to.") ; fill 4
Text($00116990, "Cancel the connection?")
Text($001169AC, "%s's HomeLand, which you just visited, has reached its ending.")

Text($001169FC, "%s's HomeLand, which you just visited, is no longer there.") ; fill 14
Text($00116A48, "The HomeLand you selected is no longer there.\nPlease try again.") ; fill 37
Text($00116AB0, "%s's HomeLand is ??") ; fill 24
Text($00116ADC, "Will you wait until HomeLand is discovered?") ; fill 1

//more after

//Pause Menu
Text($00116C90, "Save") ; fill 5
Text($00116C9C, "Quit") ; fill 7
Text($00116CD0, "Settings") ; fill 1
Text($00116CE8, "Save adventure to the Memory Card?")
Text($00116D08, "Save adventure to the Memory Card?")
Text($00116D78, "Save and exit to the Main Menu?") ; fill 1
Text($00116DFC, "Would you like to save and return home?") ; fill 4

Text($00199E28, "History") ; fill 1
Text($0019A198, "History") ; fill 1

// start.rel
Text($57051B14, "Are you a boy or a girl?") ; fill 24
Text($57051B44, "Please name your character.") ; fill 1
Text($57051B60, "This name already exists on the Memory Card.") ; fill 2
Text($57051BA0, "Your adventure will start with this name.") ; fill 4
Text($57051BC8, "New adventure data has been saved on the Memory Card.") ; fill 7

Text($57051D18, "%03d hours %02d mins") ; fill 4

Text($57051F54, "Check the Memory Card in Slot A")
Text($57051F6C, "Edit this Memory Card") ; fill 11
Text($57051F8C, "Start without saving") ; fill 23
Text($57051FBC, "Is it OK to erase this data?") ; fill 8
Text($57051FE0, "Are you sure you want to erase this data?") ; fill 11
Text($570520E8, "Is it OK to erase this data?") ; fill 8
Text($5705210C, "Are you sure you want to erase this data?") ; fill 11
Text($57052168, "Failed to load Memory Card") ; fill 9

Text($570523A8, "Play Time:") ; fill 10

Text($57052600, "Weapons") ; fill 1
Text($57052608, "Shields") ; fill 1
Text($57052610, "Items") ; fill 3
Text($57052618, "You have %D EXP") ; fill 4
Text($5705262C, "New Game") ; fill 12
Text($57052640, "Network") ; fill 9
Text($57052650, "Network Setup") ; fill 3
Text($57052660, "Connection Test") ; fill 1
Text($57052670, "Credits") ; fill 13
Text($57052684, "Go to Network Settings?") ; fill 1