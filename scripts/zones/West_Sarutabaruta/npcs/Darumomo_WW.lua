-----------------------------------
-- Area: West Sarutabaruta
--  NPC: Darumomo, W.W.
-- Type: Border Conquest Guards
-- !pos 399.450 -25.858 727.545 115
-----------------------------------
require("scripts/globals/conquest")
-----------------------------------

local guardNation = tpz.nation.WINDURST
local guardType   = tpz.conq.guard.BORDER
local guardRegion = tpz.region.SARUTABARUTA
local guardEvent  = 32758

function onTrade(player,npc,trade)
    tpz.conq.overseerOnTrade(player, npc, trade, guardNation, guardType)
end

function onTrigger(player,npc)
    tpz.conq.overseerOnTrigger(player, npc, guardNation, guardType, guardEvent, guardRegion)
end

function onEventUpdate(player,csid,option)
    tpz.conq.overseerOnEventUpdate(player, csid, option, guardNation)
end

function onEventFinish(player,csid,option)
    tpz.conq.overseerOnEventFinish(player, csid, option, guardNation, guardType, guardRegion)
end