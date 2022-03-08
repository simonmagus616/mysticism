Scriptname basicRecallScript extends ActiveMagicEffect  
 
ObjectReference Property XMarker auto
Activator Property RecallPortal auto
Actor Property PlayerRef auto
GlobalVariable Property MarkCastBefore Auto
Float Property fSummonDistance Auto
Float Property fSummonDistance2 Auto
Float Property fWaitTime Auto

Event OnEffectStart(actor akTarget, actor akCaster)

	if(MarkCastBefore.getValue() == 0.0)
       	PlayerRef.interruptCast()
		return
	endIf

	ObjectReference kPortalFX = akCaster.PlaceAtMe(RecallPortal)

	float fAngleZ = akCaster.GetAngleZ()
	kPortalFX.MoveTo(akCaster, fSummonDistance * Math.Sin(fAngleZ), fSummonDistance * Math.Cos(fAngleZ), 0.0)	
   
	Utility.Wait(fWaitTime)
	
	PlayerRef.MoveTo(XMarker)

	akCaster.PlaceAtMe(RecallPortal)

	ObjectReference kPortalFX2 = akCaster.PlaceAtMe(RecallPortal)

	float fAngleZ2 = akCaster.GetAngleZ()
	kPortalFX2.MoveTo(akCaster, fSummonDistance2 * Math.Sin(fAngleZ), fSummonDistance2 * Math.Cos(fAngleZ), 0.0)	
   
	Utility.Wait (3.0) 

	kPortalFX.Disable()
	kPortalFX.Delete()
	kPortalFX2.Disable()
	kPortalFX2.Delete()

endEvent

