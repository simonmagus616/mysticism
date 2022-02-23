;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 37
Scriptname PRKF_OpenLockTestPerk2_053C7537 Extends Perk Hidden

;BEGIN FRAGMENT Fragment_13
Function Fragment_13(ObjectReference akTargetRef, Actor akActor)
;BEGIN CODE
pDoomTowerCountGlobal.setValue(pGameDaysPassed.getValue() + 1)
akTargetRef.lock(FALSE)
akTargetRef.activate(game.getPlayer())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property pDoomTowerCountGlobal  Auto  
GlobalVariable Property pGameDaysPassed  Auto  
