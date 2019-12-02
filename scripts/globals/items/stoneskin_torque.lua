-----------------------------------------
-- ID: 15170
-- Item: Stoneskin Torque
-- Item Effect: Stoneskin
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")

function onItemCheck(target)
    return 0
end

function onItemUse(target)
    if target:addStatusEffect(tpz.effect.STONESKIN, 104, 0, 300, 0, 0, 4) then
        target:messageBasic(tpz.msg.basic.GAINS_EFFECT_OF_STATUS, tpz.effect.STONESKIN)
    else
        target:messageBasic(tpz.msg.basic.NO_EFFECT)
    end
end
