Scriptname basicMarkScript extends ActiveMagicEffect  

ObjectReference Property XMarker auto 
GlobalVariable Property MarkCastBefore auto

Actor Property PlayerRef auto

Event OnEffectStart(actor akTarget, actor akCaster)
    MarkCastBefore.setValue(1.0)
    XMarker.MoveTo(PlayerRef)
    
endEvent