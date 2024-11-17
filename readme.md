# 🍵 Hylint Distributeurs — v2.1

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
return {
    ['water'] = {
        label = 'Bouteille Eau',
        weight = 350,
        stack = true,
        close = true,
        description = "Si vous pensez avoir besoin de plus, vous le faites",
        client = {
            status = { thirst = 330000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'vw_prop_casino_water_bottle_01a', 
            pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
            usetime = 7500,
        },
    },

    ['sprunk'] = {
        label = 'Sprunk',
        weight = 350,
        stack = true,
        close = true,
        description = "Ça a le goût de l'eau qui t'a frappé à la gorge",
        client = {
            status = { thirst = 210000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'ng_proc_sodacan_01b', 
            pos = vec3(0.005, -0.001, 0.08), rot = vec3(0.0, 0.0, 160.0) },
            usetime = 5000,
        },
    },

    ['ejunk'] = {
        label = 'Junk Energy',
        weight = 350,
        stack = true,
        close = true,
        description = "Boire trop de ceci ne vous tuera pas. Je pense.",
        client = {
            status = { thirst = 210000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'sf_prop_sf_can_01a', 
            pos = vec3(0.025, 0.010, 0.05), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 5000,
        },
    },

    ['orangotang'] = {
        label = 'Orang-o-tang',
        weight = 350,
        stack = true,
        close = true,
        description = "Je ne savais même pas que les gens voulaient ça",
        client = {
            status = { thirst = 210000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_orang_can_01', 
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0) },
            usetime = 5000,
        },
    },

    ['ecola'] = {
        label = 'eCola',
        weight = 350,
        stack = true,
        close = true,
        description = "Hey, there is soda in my cocaine",
        client = {
            status = { thirst = 210000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ecola_can', 
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0) },
            usetime = 5000,
        },
    },


    ['ecoladiet'] = {
        label = 'eCola Diet',
        weight = 350,
        stack = true,
        close = true,
        description = "Hey, there is soda in my cocaine",
        client = {
            status = { thirst = 210000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ecola_can', 
            pos = vec3(0.0, 0.0, 0.0), rot = vec3(0.0, 0.0, 130.0) },
            usetime = 5000,
        },
    },
    
    ['coffee_black'] = {
        label = 'Café Noir',
        weight = 350,
        stack = true,
        close = true,
        description = "Un ptit coup de remontant",
        client = {
            status = { thirst = 280000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'ng_proc_coffee_01a', 
            pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
            usetime = 7500,
        },
    },

    ['coffee_milked'] = {
        label = 'Café au Lait',
        weight = 350,
        stack = true,
        close = true,
        description = "Un ptit coup de remontant",
        client = {
            status = { thirst = 280000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'ng_proc_coffee_01a', 
            pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
            usetime = 7500,
        },
    },

    ['coffee_sugar'] = {
        label = 'Café avec du Sucre',
        weight = 350,
        stack = true,
        close = true,
        description = "Un ptit coup de remontant",
        client = {
            status = { thirst = 280000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'ng_proc_coffee_01a', 
            pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
            usetime = 7500,
        },
    },    

    ['coffee_mocha'] = {
        label = 'Mochaccino',
        weight = 350,
        stack = true,
        close = true,
        description = "Qu'est que c'est ? Un Mocha !",
        client = {
            status = { thirst = 280000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'ng_proc_coffee_01a', 
            pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
            usetime = 7500,
        },
    },

    ['coffee_cpcno'] = {
        label = 'Cappuccino',
        weight = 350,
        stack = true,
        close = true,
        description = "Cela pourrait te réveiller un peu",
        client = {
            status = { thirst = 280000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'ng_proc_coffee_01a', 
            pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
            usetime = 7500,
        },
    },

    ['coffee_amrcno'] = {
        label = 'Americano',
        weight = 350,
        stack = true,
        close = true,
        description = "Café américain, avec un o",
        client = {
            status = { thirst = 280000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'ng_proc_coffee_01a', 
            pos = vec3(0.008, 0.0, -0.05), rot = vec3(0.0, 0.0, -40.0) },
            usetime = 7500,
        },
    },
}
```


### ©️ Hylint
