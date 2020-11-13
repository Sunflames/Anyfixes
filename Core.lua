-- Table containing strings for MOTD
local quouteoftheday = {'|cFFFF9900"#MythicPLUSrocks!"',
'|cFFFF9900"Why am I doing this to myself every week?"',
'|cFFFF9900"This is the dungeon you have been looking for!"',
'|cFFFF9900"If art thou seek thy loot, thou shall receive!"'}

-- MOTD + Random string alternator
print("|cFFFFFF00Write /ax to get the current week affixes!", quouteoftheday[ math.random( 1, #quouteoftheday - 1)]);

--------------------------------------------------------------------------------------------------------------------------------------------------------------
--Work area
--------------
-- Slash /rl command reload ui
SLASH_RELOADUI1 = "/rl"
SlashCmdList.RELOADUI = ReloadUI

-- Slash /rs command reload stack
SLASH_FRAMESTK1 = "/rs"
SlashCmdList.FRAMESTK = function()
	LoadAddOn('Blizzard_DebugTools')
	FrameStackTooltip_Toggle()
end

--------------------------------------------------------------------------------------------------------------------------------------------------------------

local affixIDsAnyfixes2 = C_MythicPlus.GetCurrentAffixes()
for i, affix in ipairs(affixIDsAnyfixes2) do
	if affix.id ~= 0 and affix.id < 15 then
	local Affixeslol = C_ChallengeMode.GetAffixInfo(affix.id)
local tablaeu = {Affixeslol}
print(tablaeu[1])
-- Slash command
SLASH_ANYFIX1 = '/ax'
SlashCmdList['ANYFIX'] = function(message)

local Fra = CreateFrame("Frame", "MainFrame", UIParant, "UIPanelDialogTemplate");
Fra:SetSize(400, 460);
Fra:SetPoint("CENTER", UIParant, "CENTER");

Fra.title = Fra:CreateFontString(nil, "OVERLAY");
Fra.title:SetFontObject("GameFontHighlight");
Fra.title:SetPoint("CENTER", MainFrameTitleBG, "CENTER", 5, 0);
Fra.title:SetText("AnyFixes");

Fra.exitButton = CreateFrame("Button", nil, Fra, "GameMenuButtonTemplate");
Fra.exitButton:SetPoint("LEFT", Fra, "BOTTOM", 100, 30);
Fra.exitButton:SetSize(80,30);
Fra.exitButton:SetText("Close");
Fra.exitButton:SetNormalFontObject("GameFontNormalLarge");
Fra.exitButton:SetHighlightFontObject("GameFontHighlightLarge");
Fra.exitButton:SetScript("OnClick", function(self) self:GetParent():Hide() end);

Fra.fontString1 = Fra:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Fra.fontString1:SetPoint("CENTER", Fra, "TOP", 0, -50);
Fra.fontString1:SetText("This week, the mythic+ affixes are:");

Fra.fontString2 = Fra:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Fra.fontString2:SetPoint("CENTER", Fra, "CENTER", 0, 0);
Fra.fontString2:SetText(tablaeu[1]);
Fra.fontString3 = Fra:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Fra.fontString3:SetPoint("CENTER", Fra, "CENTER", 0, -20);
Fra.fontString3:SetText(tablaeu[2]);
Fra.fontString4 = Fra:CreateFontString(nil, "OVERLAY", "GameFontNormal")
Fra.fontString4:SetPoint("CENTER", Fra, "CENTER", 0, -40);
Fra.fontString4:SetText(tablaeu[3]);
end
end
end