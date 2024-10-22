# 🍵 Hylint Distributeurs — v1.0.0

### 📹 Previews
![image](https://github.com/user-attachments/assets/7e158da2-305c-4009-b761-44bbc3d3ad8b)
![image](https://github.com/user-attachments/assets/f93b76f0-8aad-431e-ba28-61e3604ff649)
![image](https://github.com/user-attachments/assets/ad1cc100-b6d5-42a1-84dd-08f5feb6b08f)

### ⭐ Pourquoi utiliser ce script ?
- Certains distributeurs ne sont pas détectés dans ox_inventory, de plus, le code est plus propre.

### 📃 Vous aurez besoin de :
- [ox_lib](https://github.com/overextended/ox_lib/releases/latest)
- [ox_inventory](https://github.com/overextended/ox_inventory/releases/latest)
- [ox_target](https://github.com/overextended/ox_target/releases/latest)

### 👨🏻‍💻 Comment installer/configurer ?
- Téléchargez notre dernière release.
- Mettez la dans votre serveur.
- Ajoutez le code suivant dans votre script ox_inventory/data/items.lua.

```lua
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
```


### ©️ Hylint
