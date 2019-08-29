local WeaponFile = import('/lua/sim/DefaultWeapons.lua')
local DefaultBeamWeapon = WeaponFile.DefaultBeamWeapon

TMAmizurabluelaserweapon = Class(DefaultBeamWeapon) {
    BeamType = import('/mods/SkyTracker/lua/TMcollisionbeams.lua').TMMizuraBlueLaserBeam,
    FxMuzzleFlash = {},
    FxChargeMuzzleFlash = {},
    FxUpackingChargeEffects = import('/lua/EffectTemplates.lua').CMicrowaveLaserCharge01,
    FxUpackingChargeEffectScale = 1,
}
