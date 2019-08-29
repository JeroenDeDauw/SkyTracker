#****************************************************************************
#**
#**  File     :  /cdimage/units/UEB2301/UEB2301_script.lua
#**  Author(s):  John Comes, David Tomandl, Jessica St. Croix
#**
#**  Summary  :  UEF Heavy Gun Tower Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local TMWeaponsFile = import('/mods/TotalMayhem/lua/TMAeonWeapons.lua')
local TMAmizurabluelaserweapon = TMWeaponsFile.TMAmizurabluelaserweapon
local TMEffectTemplate = import('/mods/TotalMayhem/lua/TMEffectTemplates.lua')
local EffectTemplate = import('/lua/EffectTemplates.lua')

SBROT1HPD = Class(TStructureUnit) {
     Weapons = {
        laserblue = Class(TMAmizurabluelaserweapon) {
	},
},
    OnKilled = function(self, instigator, damagetype, overkillRatio)
        TStructureUnit.OnKilled(self, instigator, damagetype, overkillRatio)
        self:CreatTheEffectsDeath()  
    end,

CreatTheEffectsDeath = function(self)
	local army =  self:GetArmy()
	for k, v in TMEffectTemplate['AeonUnitDeathRing03'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'BROT1HPD', army, v):ScaleEmitter(2.95))
	end
end,
}

TypeClass = SBROT1HPD