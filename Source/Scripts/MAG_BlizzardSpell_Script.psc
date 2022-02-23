Scriptname MAG_BlizzardSpell_Script extends ActiveMagicEffect  

Spell Property MAG_BlizzardDamage_Spell Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)

	MAG_BlizzardDamage_Spell.Cast(akCaster, akTarget)

EndEvent 

