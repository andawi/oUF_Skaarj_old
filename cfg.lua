 local addon, ns = ...
 local cfg = CreateFrame("Frame")

  -----------------------------
  -- Media
  -----------------------------
  
local mediaPath = "Interface\\AddOns\\Media\\"
local mediaPathN = "Interface\\AddOns\\oUF_Skaarj\\media\\"
cfg.texture = mediaPath.."texture"
cfg.font, cfg.fontsize, cfg.shadowoffsetX, cfg.shadowoffsetY, cfg.fontflag = mediaPath.."pixel.ttf", 8, 0, 0,  "Outlinemonochrome" -- "" for none THINOUTLINE Outlinemonochrome
cfg.fontB = mediaPathN.."ROADWAY.ttf"
cfg.symbol = mediaPath.."symbol.ttf"
cfg.buttonTex = mediaPath.."gloss"
cfg.raidIcons = mediaPath.."raidicons"
cfg.squares = mediaPathN.."squares.ttf"
cfg.arrow = mediaPathN.."Arrow"

cfg.highlightBorder = mediaPathN..'highlightBorder'


  
  -----------------------------
  -- Unit Frames 
  -----------------------------
  
cfg.scale = 1  

cfg.party = false
cfg.raid = true	
  
--player, target, focus 
cfg.width = 250 
cfg.health_height = 30
cfg.power_height = 3
cfg.specific_power_height = 6
-- raid
cfg.raid_width = 140
cfg.raid_health_height = 38
cfg.raid_power_height = 3

--party
cfg.party_width = 170
cfg.party_health_height = 30
cfg.party_power_height = 3
--pet, targettarget, focustarget
cfg.pet_width = 90
cfg.pet_height = 30

cfg.disableRaidFrameManager = false
cfg.portraits = false
cfg.healcomm = true
cfg.specific_power = true

cfg.AltPowerBar = true
cfg.AltPowerBar_pos = {'CENTER', UIParent, 0, -295}
cfg.AltPowerBar_Width = 250
cfg.AltPowerBar_Height = 12

-- Unit Frames Positions

 cfg.unit_positions = {
             Player = { x= -450, y= -60},  
             Target = { x=	450, y= -60},  
       Targettarget = { x=    0, y=  -65},  
              Focus = { x= -260, y=  100},  
        Focustarget = { x=    0, y=  -65},  
                Pet = { x=	  0, y=  -65},  
               Raid = { x=	 0, y=  -150},   
	          Party = { x=	 10, y=  250},		  
}

  -----------------------------
  -- Auras 
  -----------------------------
  
cfg.auras = true  -- disable all auras
cfg.border = false
cfg.onlyShowPlayer = false -- only show player debuffs on target
cfg.disableCooldown = false -- hide Cooldown Spiral
cfg.aura_font, cfg.aura_fontsize, cfg.aura_fontflag = mediaPath.."pixel.ttf", 8, "Outlinemonochrome" 
cfg.player_debuffs_num = 18
cfg.target_debuffs_num = 18
cfg.target_buffs_num = 8

  -----------------------------
  -- Plugins 
  -----------------------------
  
cfg.Smooth = true
cfg.DruidMana = true

--DebuffHighlight
cfg.DebuffHighlight = true
cfg.DebuffHighlightFilter = true

--AuraWatch
 cfg.showAuraWatch = true
 cfg.onlyShowPresent = true
 cfg.anyUnit = true
 
cfg.spellIDs = {

	--SPELL ID, size, X-POS, Y-POS, anyUnit, ALPHA, Class
	
	{6788, 		19, 38, 5, true, 1, 'PRIEST'},			-- Weakened Soul (lowest frame level)
	{77613, 	13, 10, 11, false, 1, 'PRIEST'},				-- Grace
	{33076, 	13, 24, 11, false, 1, 'PRIEST'},			-- Prayer of Mending
	{17, 		13, 38, 11, true, 1, 'PRIEST'},				-- Power Word: Shield
	{139, 		13, 52, 11, false, 1, 'PRIEST'}, 			-- Renew
	
	--POS1 (18, 0) - personal Defensive CDs #1
	{642, 		26, 18, 0, true, 1, 'GENERIC'}, 			-- Divine Shield (100%; 5min)
	{871, 		26, 18, 0, true, 0.95, 'GENERIC'}, 			-- Shield Wall (40%; 5min)
	{61336, 	26, 18, 0, true, 0.95, 'GENERIC'},			-- Survival Instincts (50%; 3min)		
	{19263, 	26, 18, 0, true, 0.95, 'GENERIC'},			-- Deterrence (100% deflect; 30% AoE; 2min)
	{45438, 	26, 18, 0, true, 0.95, 'GENERIC'},			-- Iceblock (100%; 5min)
	{30823, 	26,	18, 0, true, 0.95, 'GENERIC'},			-- Shamanistic Rage (30%; 1min CD)
	{108271, 	26, 18, 0, true, 0.95, 'GENERIC'},			-- Astral Shift (40%, 2min CD)
	{48792, 	26, 18, 0, true, 0.95, 'GENERIC'},			-- Icebound Fortitude (20%; 3min)
	
	
	--POS2 (32, 0) - personal Defensive CDs #2
	{86659, 	26, 32, 0, true, 0.95, 'GENERIC'},			-- Guardian of Ancient Kings (50%; 3min; PROT)
	{12975, 	26, 32, 0, true, 0.95, 'GENERIC'},			-- Last Stand (+30% HP; 3min CD)
	{106922, 	26, 32, 0, true, 0.95, 'GENERIC'},			-- Might of Ursoc (+30% HP; 3min CD)
	{48707,		25, 32, 0, true, 0.95, 'GENERIC'}, 			-- Anti-magic Shell
	
	--POS3 (46, 0) - personal Defensive CDs #3
	{31850,		26, 46, 0, true, 0.95, 'GENERIC'},			-- Ardent Defender (20%; 3min CD; lifesaver)
	{22812, 	26, 46, 0, true, 0.95, 'GENERIC'},			-- Barkskin (20%; 1min)
	{55233, 	26, 46, 0, true, 0.95, 'GENERIC'}, 			-- Vampiric Blood	
	
	--POS4 (60, 0) - personal Defensive CDs #4
	{498, 		26, 60, 0, true, 0.95, 'GENERIC'},  		-- Divine Protection (40%; 1min CD)
	

	--POS5 (74, 0)
	{31821,		26, 74, 0, true, 0.95, 'GENERIC'},			-- Devotion Aura (20%; 3min; magic)
	{1022, 		26, 74, 0, true, 0.95, 'GENERIC'},			-- Hand of Protection
	{6940, 		26, 74, 0, true, 0.95, 'GENERIC'},			-- Hand of Sacrifice
	
	--POS6 (88, 0)
	

	--POS7 (102, 0)
	{81782,		26, 102, 0, true, 0.95, 'GENERIC'},			-- Power Word Barrier

	-- POS8 (116, 0) overlap w/ POS7
	{740, 		26, 108, 0, true, 0.95, 'GENERIC'},			-- Tranquility
	
	-- POS9
	{97462, 	26, 112, 0, true, 0.95, 'GENERIC'},			-- Rallying Cry
	
	
	-- POS10 (122, 0) - last POS
	{33206, 	26, 122, 0, true, 0.95, 'GENERIC'},			-- Pain Suppress
	{102342, 	26, 122, 0, true, 0.95, 'GENERIC'},			-- Ironbark (20%; 2min; RESTO)
	{47788, 	26, 122, 0, true, 0.95, 'GENERIC'},			-- Guardian Spirit
	

	
	
	
	
	
	
	
	-- Mana CDs @ Mana Bar
	{64901,   	20, 125, -15, true, 0.95, 'GENERIC'},		-- Hymn of Hope
	{29166,		20, 125, -15, true, 0.95, 'GENERIC'},			-- Innervate
	
	
	-- minor CDs
	{112048,	12, 40, -8, true, 0.95, 'GENERIC'},		-- Shield Barrier
	{132404,	12, 53, -8, true, 0.95, 'GENERIC'},		-- Shield Block
	
	{132402,	12, 40, -8, true, 0.95, 'GENERIC'},		-- Savage Defense
	
	{114052,	12,	40, -8, true, 0.95, 'GENERIC'},			-- Ascendance (Resto Shaman Heal CD)
	{33891,		12, 40, -8, true, 0.95, 'GENERIC'},			-- Tree Form (Resto Druid)
	{31884,		12, 40, -8, true, 0.95, 'GENERIC'},			-- Avenging Wrath (Pala Heal CD)
	
	{81700,		12, 40, -8, true, 0.95, 'GENERIC'},			-- Archangel
	{109964,	12, 53, -8, true, 0.95, 'GENERIC'},			-- Spirit Shell
	
	
	
	
	
	

	





--[[
	DRUID = {
	{94447, {0.2, 0.8, 0.2}},			    -- Lifebloom
	{8936, {0.8, 0.4, 0}, "TOPLEFT"},			-- Regrowth
	{102342, {0.38, 0.22, 0.1}},		    -- Ironbark
	{48438, {0.4, 0.8, 0.2}, "BOTTOMLEFT"},	-- Wild Growth
	{774, {0.8, 0.4, 0.8},"TOPRIGHT"},		-- Rejuvenation
	},
	MONK = {
	{119611, {0.2, 0.7, 0.7}},			-- Renewing Mist
	{124682, {0.4, 0.8, 0.2}},			-- Enveloping Mist
	{124081, {0.7, 0.4, 0}},			-- Zen Sphere
	{116849, {0.81, 0.85, 0.1}},		-- Life Cocoon
	},
	PALADIN = {
	{20925, {0.9, 0.9, 0.1}},	            -- Sacred Shield
	{6940, {0.89, 0.1, 0.1}, "BOTTOMLEFT"}, -- Hand of Sacrifice
	{114039, {0.4, 0.6, 0.8}, "BOTTOMLEFT"},-- Hand of Purity
	{1022, {0.2, 0.2, 1}, "BOTTOMLEFT"},	-- Hand of Protection
	{1038, {0.93, 0.75, 0}, "BOTTOMLEFT"},  -- Hand of Salvation
	{1044, {0.89, 0.45, 0}, "BOTTOMLEFT"},  -- Hand of Freedom
	{114163, {0.9, 0.6, 0.4}, "RIGHT"},	    -- Eternal Flame
	{53563, {0.7, 0.3, 0.7}, "TOPRIGHT"},   -- Beacon of Light
	},
	
	
	
	SHAMAN = {
	{974, {0.2, 0.7, 0.2}},				  -- Earth Shield
	{61295, {0.7, 0.3, 0.7}, "TOPRIGHT"}, -- Riptide
	{51945, {0.7, 0.4, 0}, "TOPLEFT"},	  -- Earthliving
	},
	DEATHKNIGHT = {
	{49016, {0.89, 0.89, 0.1}},			-- Unholy Frenzy
	},
	HUNTER = {
	{34477, {0.2, 0.2, 1}},				-- Misdirection
	},
	MAGE = {
	{111264, {0.2, 0.2, 1}},			-- Ice Ward
	},
	ROGUE = {
	{57933, {0.89, 0.1, 0.1}},			-- Tricks of the Trade
	},
	WARLOCK = {
	{20707, {0.7, 0.32, 0.75}},			-- Soulstone
	},
	WARRIOR = {
	{114030, {0.2, 0.2, 1}},			  -- Vigilance
	{3411, {0.89, 0.1, 0.1}, "TOPRIGHT"}, -- Intervene
	},
	]]
 }
 
 
 cfg.debuffFilter = {		--Debuff Filter (Blacklist)
		
		-- Class
		['Weakened Soul'] = true,
		
		
		--Misc
		['Tricked or Treated'] = true,
		['Upset Tummy'] = true,
		['Deserter'] = true,
		['Vault of Archavon Closure Warning'] = true,
		['Dungeon Cooldown'] = true,
		['Dungeon Deserter'] = true,
		['Flight Orders'] = true,
		['Sample Satisfaction'] = true,
		['Totem of Wrath'] = true,
		['Void-Touched'] = true, 
		['Recently Mass Resurrected'] = true,
		['Master Adventurer Award'] = true, 
		
		['Eck Residue'] = true,
		['Weakened Heart'] = true,
		
		--World Events
		['Mistletoe'] = true,
		
		-- Mage
		['Arcane Blast'] = true,
		['Hypothermia'] = true,
		
		--Shaman
		['Sated'] = true,
		
		--Mage
		['Temporal Displacement'] = true,
		
		--Pala
		['Forbearance'] = true,
		['Ardent Defender'] = true,
		
		--ToC
		['Light Essence'] = true,
		['Dark Essence'] = true,
		['Leeching Swarm'] = true,
		['Permafrost'] = true,
		
		['Powering Up'] = true,
		
		--ICC
		['Chill of the Throne'] = true,
		['Green Blight Residue'] =true,
		
			--Saurfang
			['Scent of Blood'] = true,
		
			-- Festergut
			['Blighted Spores'] = true,
			--['Inoculated'] = true,
			['Orange Blight Residue'] = true,
			
			-- Sindragosa
			['Frost Aura'] = true,
			--['Mystic Buffet'] = true,
			['Chilled to the Bone'] = true,
			-- LK hc
			['Harvest Soul'] = true,
			
			
		--T13
		['Degradation'] = true,
		['Transporter Malfunction'] = true,
			
	}
 
  -----------------------------
  -- Colors 
  -----------------------------
  
cfg.class_colorbars = false
  
  cfg.Color = { 				
       Health = {r =  0.3,	g =  0.3, 	b =  0.3},
  }

  -----------------------------
  -- Handover
  -----------------------------
  
ns.cfg = cfg
