-----------------------------------------
-- Congestus Cell
-- ID 5378
-- Removes VIT Down effect
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local debilitation = target:getStatusEffect(tpz.effect.DEBILITATION)
    if (debilitation) then
        local power = debilitation:getPower()
        if bit.band(power, 0x004) > 0 then
            return 0
        end
    end
    return -1
end

function onItemUse(target)
    local debilitation = target:getStatusEffect(tpz.effect.DEBILITATION)
    local power = debilitation:getPower()
    local newpower = bit.band(power, bit.bnot(0x004))
    target:delStatusEffectSilent(tpz.effect.DEBILITATION)
    if (newpower > 0) then
        target:addStatusEffectEx(tpz.effect.DEBILITATION, tpz.effect.DEBILITATION, newpower, 0, 0)
    end
    target:messageText(target, zones[target:getZoneID()].text.CELL_OFFSET + 13)
end