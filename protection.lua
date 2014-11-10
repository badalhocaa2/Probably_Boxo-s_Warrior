-- SPEC ID 73
ProbablyEngine.rotation.register_custom(73, "Boxo's Protection", {

--Utilities

-- Pause Rotation
	{ "pause", "modifier.lshift" },

-- leap
	{ "Heroic Leap", "modifier.control", "mouseover.ground" },
	
-- banner
	{ "Mocking Banner", "modifier.lalt", "mouseover.ground" },
	
-- auto target stuff
	{ "/targetenemy [noexists]", { "toggle.autotarget", "!target.exists" } },
	{ "/targetenemy [dead]", { "toggle.autotarget", "target.exists", "target.dead" } },

-- Survival
	-- self heals
	{ "Victory Rush", "player.health < 85" },
	{ "Impending Victory", "player.health < 70" },
	{ "Enraged Regeneration", "player.health < 70" },
	
	-- effective health
	{ "Rallying Cry", "player.health < 10" },
	{ "Last Stand", "player.health < 20" },
	
	-- defensives
	{ "Shield Wall", "player.health < 30" },
	{ "Demoralizing Shout" },
	{ "Vigilance", "player.health < 50" },
	-- active mitigation
	--to be added later
	
-- Kicks
	{ "Pummel", "target.interruptAt(30)" },

-- Ranged
	{ "Heroic Throw", "target.range >= 10" },
	{ "Throw", { 
		"target.range >= 10", 
		"!player.moving",
	}},

  -- Cooldowns
{{
	{ "Bloodbath" },
	{ "Avatar" },
	{ "Recklessness" },
}, { "modifier.cooldowns", "target.range <= 8" } },
	{ "Berserker Rage" },

	-- AoE
{{
	{ "Shockwave" },
	{ "Dragon Roar" },
	{ "Thunder Clap", "!target.debuff(Deep Wounds)" },
	{ "Bladestorm" },
}, { "modifier.multitarget", "target.range <= 5" } }, 

	-- single target
{{
	{ "Dragon Roar" },
	{ "Shield Slam" },
	{ "Revenge" },
	{ "Execute", "player.buff(Sudden Death)" },
	{ "Execute", "player.rage > 80" },
	{ "Storm Bolt" },
	{ "Heroic Strike", "player.buff(Unyielding Strikes).count = 6" },
	{ "Devastate" },
	{ "Heroic Strike", "player.rage > 90" },
}, "target.range <= 8" },
	
}, {

-- leap
	{ "Heroic Leap", "modifier.control", "mouseover.ground"},

},
 function ()
ProbablyEngine.toggle.create('autotarget', 'Interface\\Icons\\ability_hunter_snipershot', 'Auto Target', 'Automaticaly target the nearest enemy when target dies or does not exist.')
ProbablyEngine.toggle.create('tc', 'Interface\\Icons\\ability_deathwing_bloodcorruption_death', 'Threat Control', '')
  end)