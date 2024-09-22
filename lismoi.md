Mettez sa dans votre item.lua de votre ox_inventory

['can'] = {
	label = 'Soda',
	weight = 350,
	client = {
		status = { thirst = 300000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = "prop_ecola_can", pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
		usetime = 5000,
	}
},

['coffee'] = {
	label = 'Café',
	weight = 200,
	client = {
		status = { thirst = 220000, drunk = -10000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = 'prop_fib_coffee', 
		pos = vec3(0.008, 0.0, 0.05), rot = vec3(0.0, 0.0, -40.0) },
		usetime = 7500,
	},
},

['water'] = {
	label = 'Bouteille d\'Eau',
	weight = 500,
	client = {
		status = { thirst = 50000 },
		anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
		prop = { model = "prop_ld_flow_bottle", pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
		usetime = 5000,
		cancel = true,
	}
},
