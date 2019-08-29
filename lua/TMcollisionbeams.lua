local CollisionBeam = import('/lua/sim/CollisionBeam.lua').CollisionBeam
local EffectTemplate = import('/lua/EffectTemplates.lua')

local LocalCollisionBeam = Class(CollisionBeam) {
    FxImpactUnit = EffectTemplate.DefaultProjectileLandUnitImpact,
    FxImpactLand = {},
    FxImpactWater = EffectTemplate.DefaultProjectileWaterImpact,
    FxImpactUnderWater = EffectTemplate.DefaultProjectileUnderWaterImpact,
    FxImpactAirUnit = EffectTemplate.DefaultProjectileAirUnitImpact,
    FxImpactProp = {},
    FxImpactShield = {},
    FxImpactNone = {},
}

TMMizuraBlueLaserBeam = Class(LocalCollisionBeam) {
    TerrainImpactType = 'LargeBeam01',
    TerrainImpactScale = 0.2,
    FxBeamStartPointScale = 1.2,
    FxBeamStartPoint = EffectTemplate.ASDisruptorCannonMuzzle01,
    FxBeam = {'/mods/SkyTracker/effects/emitters/mizura_bluelaser_emit.bp'},
    FxBeamEndPoint = import('/mods/SkyTracker/lua/TMEffectTemplates.lua').AeonNocaCatBlueLaserHit,
    FxBeamEndPointScale = 0.07,
    SplatTexture = 'czar_mark01_albedo',
    ScorchSplatDropTime = 0.25,
}
