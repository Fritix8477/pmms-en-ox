--ESX = exports["es_extended"]:getSharedObject()

-- Ox_Target stuff

local options =     {
	{
		name = 'box',
		icon = 'fa-solid fa-music',
		label = "Mettre Une Musique",
		event = 'ouvrir:musiqueveh'
	},
}

-- if wx.targetSupport then 
exports.ox_target:addGlobalVehicle(options)

RegisterNetEvent('ouvrir:musiqueveh')
AddEventHandler('ouvrir:musiqueveh', function()
        ExecuteCommand("pmms")
end)


local props = {
	[`p_phonograph01x`]  = {
		label = "Phonograph"
	},
	[`prop_radio_01`] = {
		label = "Radio"
	},
	[`prop_boombox_01`] = {
		label = "Boombox"
	},
	[`prop_portable_hifi_01`] = {
		label = "Boombox"
	},
	[`prop_ghettoblast_01`] = {
		label = "Boombox"
	},
	[`prop_ghettoblast_02`] = {
		label = "Boombox"
	},
	[`prop_tapeplayer_01`] = {
		label = "Tape Player"
	},
	[`bkr_prop_clubhouse_jukebox_01a`] = {
		label = "Jukebox"
	},
	[`bkr_prop_clubhouse_jukebox_01b`] = {
		label = "Jukebox"
	},
	[`bkr_prop_clubhouse_jukebox_02a`] = {
		label = "Jukebox"
	},
	[`ch_prop_arcade_jukebox_01a`] = {
		label = "Jukebox"
	},
	[`prop_50s_jukebox`] = {
		label = "Jukebox"
	},
	[`prop_jukebox_01`] = {
		label = "Jukebox"
	},
	[`v_res_j_radio`] = {
		label = "Radio"
	},
	[`v_res_fa_radioalrm`] = {
		label = "Alarm Clock"
	},
	[`prop_mp3_dock`] = {
		label = "MP3 Dock"
	},
	[`v_res_mm_audio`] = {
		label = "MP3 Dock"
	},
	[`sm_prop_smug_radio_01`] = {
		label = "Radio"
	},
    -- Ajoutez les autres props ici
}

-- Ajout de l'interaction au prop spécifique
for model, data in pairs(props) do
    exports.ox_target:addModel({
        model = model,
        options = {
            {
                name = "play_music_" .. model,
                icon = "fa-solid fa-music",
                label = data.label .. " - Mettre une musique",
                onSelect = function()
                    ExecuteCommand("pmms")
                end
            }
        }
    })
end