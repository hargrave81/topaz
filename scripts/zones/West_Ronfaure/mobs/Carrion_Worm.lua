-----------------------------------
-- Area: West Ronfaure
--  Mob: Carrion Worm
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    tpz.regime.checkRegime(player, mob, 1, 1, tpz.regime.type.FIELDS)
end
