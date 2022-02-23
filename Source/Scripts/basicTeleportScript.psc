Scriptname basicTeleportScript extends ActiveMagicEffect  

Actor property PlayerRef auto
ObjectReference property TeleportMarker auto

Event onEffectStart(Actor doesntMatter, Actor dontCare)

    Utility.Wait(0.5)
    PlayerRef.moveTo(TeleportMarker)


endEvent
