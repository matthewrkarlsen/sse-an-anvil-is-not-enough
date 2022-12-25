Scriptname AAINEScript Extends Quest

; 'IsharaMeradin' played a significant part in the construction of the OnCrosshairRefChange() part of this script.
; The script was integrated/modified/extended by Matthew R. Karlsen (quixotic-cynic, quixoticynic on Nexusmods)

Actor Property playerRef Auto
Perk Property AAINEPerk Auto
MiscObject Property BlacksmithHammer01 Auto
MiscObject Property BlacksmithTongs01 Auto
MiscObject Property Shovel02 Auto
LeveledItem Property LItemBlacksmithMinimum Auto

Event OnInit()
	;Debug.Notification("An Anvil Is Not Enough v0.6.1. initialized.")
	;Debug.Trace("An Anvil Is Not Enough v0.6.1. initialized.")
	playerRef.AddPerk(AAINEPerk)
	LItemBlacksmithMinimum.AddForm(BlacksmithHammer01,1,4)
	LItemBlacksmithMinimum.AddForm(BlacksmithTongs01,1,5)
	LItemBlacksmithMinimum.AddForm(Shovel02,1,4)
EndEvent

Function Maintenance()
	Utility.Wait(1)
	;Debug.Notification("Maintenance performed for An Anvil Is Not Enough v0.6.1.")
	;Debug.Trace("Maintenance performed for An Anvil Is Not Enough v0.6.1.")
	If(playerRef.HasPerk(AAINEPerk) == False)
		playerRef.AddPerk(AAINEPerk)
	EndIf
EndFunction