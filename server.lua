-----------------Pour obtenir de l'aide, des scripts, etc.----------------
--------------- https://discord.gg/c9ZMqvMUEE  ---------------------------
--------------------------------------------------------------------------

local ox_inventory = exports.ox_inventory

local classes = {
	['water'] = {
		waitTime = 2000,
		cost = 1
	},
	['sprunk'] = {
		waitTime = 4000,
		cost = 2
	},
	['ejunk'] = {
		waitTime = 4000,
		cost = 2
	},
	['orangotang'] = {
		waitTime = 4000,
		cost = 2
	},
	['ecola'] = {
		waitTime = 4000,
		cost = 2
	},
	['ecoladiet'] = {
		waitTime = 4000,
		cost = 2
	},
	['coffee_black'] = {
		waitTime = 2000,
		cost = 3
	},
	['coffee_milked'] = {
		waitTime = 2000,
		cost = 3
	},
	['coffee_sugar'] = {
		waitTime = 2000,
		cost = 3
	},
	['coffee_mocha'] = {
		waitTime = 2000,
		cost = 3
	},
	['coffee_cpcno'] = {
		waitTime = 2000,
		cost = 3
	},
	['coffee_amrcno'] = {
		waitTime = 2000,
		cost = 3
	},
}

RegisterServerEvent('hylintvending:buy', function(type)
	local src = source
	Wait(classes[type].waitTime)
	local count = ox_inventory:Search(src, 'count', 'money')
	if count >= classes[type].cost then
		ox_inventory:RemoveItem(src, 'money', classes[type].cost)
	    if type == 'water' then
	    	ox_inventory:AddItem(src, 'water', 1)
		elseif type == 'sprunk' then
			ox_inventory:AddItem(src, 'sprunk', 1)
		elseif type == 'ejunk' then
			ox_inventory:AddItem(src, 'ejunk', 1)
		elseif type == 'orangotang' then
			ox_inventory:AddItem(src, 'orangotang', 1)
		elseif type == 'ecola' then
			ox_inventory:AddItem(src, 'ecola', 1)
		elseif type == 'ecoladiet' then
			ox_inventory:AddItem(src, 'ecoladiet', 1)
		elseif type == 'coffee_black' then
			ox_inventory:AddItem(src, 'coffee_black', 1)
		elseif type == 'coffee_milked' then
			ox_inventory:AddItem(src, 'coffee_milked', 1)
		elseif type == 'coffee_sugar' then
			ox_inventory:AddItem(src, 'coffee_sugar', 1)
		elseif type == 'coffee_mocha' then
			ox_inventory:AddItem(src, 'coffee_mocha', 1)
		elseif type == 'coffee_cpcno' then
			ox_inventory:AddItem(src, 'coffee_cpcno', 1)
		elseif type == 'coffee_amrcno' then
			ox_inventory:AddItem(src, 'coffee_amrcno', 1)
		end
	else
		TriggerClientEvent('ox_lib:notify', src, {
			id = 'vendError',
			title = 'Impossible de vendre',
			description = 'Vous n\'avez pas assez d\'argent pour acheter ceci!',
			type = 'error'
		})
	end
end)
