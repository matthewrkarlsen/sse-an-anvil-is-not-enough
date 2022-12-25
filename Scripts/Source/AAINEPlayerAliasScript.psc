ScriptName AAINEPlayerAliasScript extends ReferenceAlias
 
AAINEScript Property questScript Auto
 
Event OnPlayerLoadGame()
	questScript.Maintenance()
EndEvent