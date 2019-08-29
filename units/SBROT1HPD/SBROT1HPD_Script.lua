local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local TMAmizurabluelaserweapon = import('/mods/SkyTracker/lua/TMAeonWeapons.lua').TMAmizurabluelaserweapon
local TMEffectTemplate = import('/mods/SkyTracker/lua/TMEffectTemplates.lua')

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