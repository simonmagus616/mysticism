Scriptname basicRecallScript extends ActiveMagicEffect  
 
ObjectReference Property XMarker auto
Actor Property PlayerRef auto
GlobalVariable Property MarkCastBefore Auto

Event OnEffectStart(actor akTarget, actor akCaster)

    if(MarkCastBefore.getValue() == 0.0)
        PlayerRef.interruptCast()
        return
    endIf

    PlayerRef.MoveTo(XMarker)
    Utility.Wait(1.0)


endEvent