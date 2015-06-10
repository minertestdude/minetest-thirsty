--[[

Configuration for Thirsty.

See init.lua for license.

]]

--[[

Default values

]]

thirsty.config = {

    stash_filename = 'thirsty.dat',

    tick_time = 0.5,

    -- Tier 0
    thirst_per_second = 1.0 / 20.0,
    damage_per_second = 1.0 / 10.0, -- when out of hydration
    stand_still_for_drink = 1.0,
    stand_still_for_afk = 120.0, -- 2 Minutes

    regen_from_node = {
        -- value: hydration regen per second
        ['default:water_source'] = 0.5,
        ['default:water_flowing'] = 0.5,
    },

    -- which nodes can we drink from (given containers)
    node_drinkable = {
        ['default:water_source'] = true,
        ['default:water_flowing'] = true,
        ['thirsty:drinking_fountain'] = true,
    },

    drink_from_container = {
        -- value: max hydration when drinking with item
        ['thirsty:wooden_bowl'] = 25,
        ['thirsty:steel_canteen'] = 25,
        ['thirsty:bronze_canteen'] = 25,
    },

    container_capacity = {
        -- value: hydro capacity in item
        ['thirsty:steel_canteen'] = 40,
        ['thirsty:bronze_canteen'] = 60,
    },

    drink_from_node = {
        -- value: max hydration when drinking from node
        ['thirsty:drinking_fountain'] = 30,
    },

    -- fountains are marked with 'f', water with 'w'
    -- to determine the fountain level
    fountain_type = {
        ['thirsty:water_fountain'] = 'f',
        ['thirsty:water_extender'] = 'f',
        ['default:water_source'] = 'w',
        ['default:water_flowing'] =  'w',
    },
    regen_from_fountain = 0.5, -- compare regen_from_node
    fountain_height = 4,
    fountain_max_level = 20,
    fountain_distance_per_level = 5,

    extraction_for_item = {
        ['thirsty:extractor']= 0.6,
    },
    injection_for_item = {
        ['thirsty:injector'] = 0.5,
    },

}

-- TODO: read more configuration from thirsty.conf or similar