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
cfg.boss = true
cfg.tank = false
  
--player, target, focus 
cfg.width = 250 
cfg.health_height = 30
cfg.power_height = 3
cfg.specific_power_height = 6
-- raid
cfg.raid_width = 140
cfg.raid_health_height = 38
cfg.raid_power_height = 3
--boss
cfg.boss_width = 170
cfg.boss_health_height = 30
cfg.boss_power_height = 3

--party, tank
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
               Boss = { x=  -300,y=  250},  
               Tank = { x=	 10, y=  100},  
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
	
	--SPELL ID, size, X-POS, Y-POS, anyUnit, ALPHA
	PRIEST = {
	
	{77613, 13, 8, 12, false},				-- Grace
	{33076, 13, 22, 12, false},				-- Prayer of Mending
	{17, 13, 36, 12, true},					-- Power Word: Shield
	{139, 13, 50, 12, false}, 				-- Renew
		
	--POS1 - personal CDs
	
	{642, 25, 18, 0, true, 0.75}, 			-- Divine Shield (50%)
	{871, 25, 18, 0, true, 0.75}, 			-- Shield Wall (50%)
	{61336, 25, 18, 0, true, 0.75},		-- Survival Instincts		
	{48792, 25, 18, 0, true, 0.75},		-- Icebound Fortitude
	{19263, 25, 18, 0, true, 0.75},		-- Deterrence
	{45438, 25, 18, 0, true, 0.75},		-- Iceblock

	--POS2
	{64901, 25, 30, 0, true, 0.75},		-- Hymn of Hope
	{29166,	17, 30, 0, true, 0.75},		-- Innervate
	
	--POS3
	{31850,	25, 42, 0, true, 0.75},		-- Ardent Defender
	{106922, 25, 42, 0, true, 0.75},		-- Might of Ursoc
	{55233, 17, 42, 0, true, 0.75}, 		-- Vampiric Blood
	

	--POS4
	{81782,	25, 64, 0, true, 0.75},		-- Power Word Barrier
	{86659, 20, 64, 0, true, 0.75},		--Guardian of Ancient Kings
	

	--POS5
	{31821,	25, 76, 0, true, 0.75},		-- Devotion Aura
	{1022, 17, 75, 0, true, 0.75},		-- Hand of Protection
	{6940, 17, 75, 0, true, 0.75},		-- Hand of Sacrifice
	
	--POS6
	{33206, 25, 88, 0, false, 0.75},		-- Pain Suppress
	{47788, 25, 88, 0, false, 0.75},		-- Guardian Spirit
	
	
	--POS7
	{740, 25, 100, 0, true, 0.75},			-- Tranquility
	
	-- POSx
	{498, 25, 112, 0, true, 0.75},  		-- Divine Protection
	{22812, 25, 112, 0, true, 0.75},		-- Barkskin
	{102342, 20, 112, 0, true, 0.75},		-- Ironbark 
	{12975, 25, 112, 0, true, 0.75},		-- Last Stand
	{48707,	25, 112, 0, true, 0.75}, 		-- Anti-magic Shell
	{97462, 20, 112, 0, true, 0.75},		-- Rallying Cry 

	{6788, 20, 36, 0, true, 0.5},				-- Weakened Soul
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
