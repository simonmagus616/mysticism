Scriptname basicTeleportScript extends ActiveMagicEffect  

Actor property PlayerRef auto
ObjectReference property TeleportMarker auto
Activator Property RecallPortal auto
Float Property fSummonDistance Auto
Float Property fSummonDistance2 Auto
Float Property fWaitTime Auto

Event onEffectStart(Actor akTarget, Actor akCaster)

 	ObjectReference kPortalFX = akCaster.PlaceAtMe(RecallPortal)

	float fAngleZ = akCaster.GetAngleZ()
	kPortalFX.MoveTo(akCaster, fSummonDistance * Math.Sin(fAngleZ), fSummonDistance * Math.Cos(fAngleZ), 0.0)	
   
	Utility.Wait(fWaitTime)

 	PlayerRef.moveTo(TeleportMarker)

	ObjectReference kPortalFX2 = akCaster.PlaceAtMe(RecallPortal)

	float fAngleZ2 = akCaster.GetAngleZ()
	kPortalFX2.MoveTo(akCaster, fSummonDistance2 * Math.Sin(fAngleZ), fSummonDistance2 * Math.Cos(fAngleZ), 0.0)	
   
	Utility.Wait (3.0) 

	kPortalFX.Disable()
	kPortalFX.Delete()
	kPortalFX2.Disable()
	kPortalFX2.Delete()

endEvent

