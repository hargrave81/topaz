-----------------------------------
-- Area: Rolanberry Fields [S]
--   NM: Sandworm
-- Note: Title Given if Sandworm does not Doomvoid
-----------------------------------
require("scripts/globals/titles")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(tpz.title.SANDWORM_WRANGLER)
end