-- Table containing strings for MOTD
local quouteoftheday = {'|cFFFF9900"#MythicPLUSrocks!"',
'|cFFFF9900"Why am I doing this to myself every week?"',
'|cFFFF9900"This is the dungeon you have been looking for!"',
'|cFFFF9900"If art thou seek thy loot, he shall receive!"',
'|cFFFF9900"𝄞 This run has taken its toll on me 𝄞"'}

-- MOTD + Random string alternator
print("|cFFFFFF00Write /ax to get the current week affixes!", quouteoftheday[ math.random( 1, #quouteoftheday - 1)]);

-- Slash command
SLASH_ANYFIX1 = '/ax'
SlashCmdList['ANYFIX'] = function(message)

-- Affixes database puller
local affixIDs = C_MythicPlus.GetCurrentAffixes()

print("|cFFFF0000------------------------------------------|r");
print("|cFFFF9900This week, the mythic+ affixes are:");
print(" ");

-- Nested table break and conditional strings
for SeasonID, value in ipairs(affixIDs) do
    for i, value in pairs(value) do
	if i == "id" and value == 1 then print("|cFFFF9900Overflowing|r - Healing in excess of a target's maximum health is instead converted to a life absorpotion effect.")end;
	if i == "id" and value == 2 then print("|cFFFF9900Skittish|r - Enemies receive 80% less threat from players.")end;
	if i == "id" and value == 3 then print("|cFFFF9900Volcanic|r - In combat, enemies will periodically summon volcanic plume dealing 40% of the player max health.")end;
	if i == "id" and value == 4 then print("|cFFFF9900Necrotic|r - All player's melee attack apply a stacking debuff that inflict increasing damage over time and reduce received healing by 2% for 9 seconds.")end;
	if i == "id" and value == 5 then print("|cFFFF9900Teeming|r - additional non-boss monsters will appear throughout the dungeon, the number of required monsters to kill increased.")end;
	if i == "id" and value == 6 then print("|cFFFF9900Raging|r - Non-boss enemies enrage at 30% health remaining, increasing damage by 100% until defeated.")end;
	if i == "id" and value == 7 then print("|cFFFF9900Bolstering|r - Non-boss enemies empower nearby allies when killed, increasing maximum health by 20% and 20% more damage, stacking.")end;
	if i == "id" and value == 8 then print("|cFFFF9900Sanguine|r - Non-boss enemies leave behind Sanguine Ichor when slain, healing enemies for 5% of their life per second and damaging players 15% of their life per second.")end;
	if i == "id" and value == 9 then print("|cFFFF9900Tyrannical|r - Bosses have 40% more health, both bosses and their minions inflict 15% more damage.")end;
	if i == "id" and value == 10 then print("|cFFFF9900Fortified|r - Non-boss enemies have 20% more health and inflict up to 30% more damage.")end;
	if i == "id" and value == 11 then print("|cFFFF9900Bursting|r - Non-boss enemies inflict a stacking debuff to players upon death, dealing 14% of maximum health per second.")end;
	if i == "id" and value == 12 then print("|cFFFF9900Grievous|r - Injured players suffer increasing damage over time until healed to maximum health.")end;
	if i == "id" and value == 13 then print("|cFFFF9900Explosive|r - While in combat, enemies periodically spawn explosive orbs that will explode for 50% of players maximum health if not killed.")end;
	if i == "id" and value == 14 then print("|cFFFF9900Quaking|r - Periodically, all players emit a shockwave, inflicting 40% of players maximum health and interrupt nearby allies.")end;
    end
end	
print("|cFFFF0000------------------------------------------|r");print(" ");
end