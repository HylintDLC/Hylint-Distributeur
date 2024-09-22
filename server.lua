-----------------Pour obtenir de l'aide, des scripts, etc.----------------
--------------- https://discord.gg/c9ZMqvMUEE  ---------------------------
--------------------------------------------------------------------------

local ox_inventory = exports.ox_inventory

--------- Coffee Machines
local itemName = {
	'Café Noir', 'Café au Lait', 'Café Sucré', 'Café Creme', -- Coffees, 1-4
	'Sprunk', 'Sprunk-Light', 'Orang-O-Tang', 'eCola', 'Diet-eCola' -- Sodas 5-9
}

local classes = {
	['coffee'] = {
		waitTime = 2000,
		cost = 3
	},
	['can'] = {
		waitTime = 4000,
		cost = 2
	},
	['water'] = {
		waitTime = 2000,
		cost = 1
	},
}

RegisterServerEvent('hylintvending:buy', function(type, name)
	local src = source
	Wait(classes[type].waitTime)
	local count = ox_inventory:Search(src, 'count', 'money')
	if count >= classes[type].cost then
		ox_inventory:RemoveItem(src, 'money', classes[type].cost)
		if type == 'coffee' then
			ox_inventory:AddItem(src, 'coffee', 1, {label = itemName[name], description = 'Un '..itemName[name]})
		elseif type == 'can' then
			ox_inventory:AddItem(src, 'can', 1, {label = itemName[name], description = 'Une cannette de '..itemName[name], image = itemName[name]})
		elseif type == 'water' then
			ox_inventory:AddItem(src, 'water', 1)
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
