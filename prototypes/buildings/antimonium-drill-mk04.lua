RECIPE {
    type = "recipe",
    name = "antimonium-drill-mk04",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {type = "item", name = "antimonium-drill-mk03",         amount = 1},
        {type = "item", name = "science-coating",               amount = 15},
        {type = "item", name = "nbfe-alloy",                    amount = 5},
        {type = "item", name = "low-density-structure",         amount = 30},
        {type = "item", name = "super-alloy",                   amount = 20},
        {type = "item", name = "ti-n",                          amount = 100},
        {type = "item", name = "intelligent-unit",              amount = 10},
        {type = "item", name = "superconductor-servomechanims", amount = 10},
        {type = "item", name = "hyperelastic-material",         amount = 15},
        {type = "item", name = "metastable-quasicrystal",       amount = 4},
        {type = "item", name = "sc-engine",                     amount = 3},
        {type = "item", name = "mechanical-parts-04",           amount = 1},
    },
    results = {
        {type = "item", name = "antimonium-drill-mk04", amount = 1}
    }
}:add_unlock("machines-mk05")

ITEM {
    type = "item",
    name = "antimonium-drill-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/antimonium-drill-mk04.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk04",
    order = "a",
    place_result = "antimonium-drill-mk04",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "antimonium-drill-mk04",
    icon = "__pyalternativeenergygraphics__/graphics/icons/antimonium-drill-mk04.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "antimonium-drill-mk04"},
    fast_replaceable_group = "antimonium-drill",
    max_health = 700,
    resource_categories = {"antimonium"},
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_slots = 0,
    --allowed_effects = {"consumption", "speed", "pollution"},
    mining_speed = 4,
    energy_source = {
        type = "burner",
        fuel_categories = {"jerry"},
        effectivity = 1,
        light_flicker = {color = {0, 0, 0}},
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        emissions_per_minute = {
            pollution = 20
        },
    },
    energy_usage = "1000kW",
    mining_power = 1,
    resource_searching_radius = 4.49,
    vector_to_place_result = {0, -3.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    circuit_wire_connection_points = circuit_connector_definitions["antimonium-drill-mkxx"].points,
    circuit_connector_sprites = circuit_connector_definitions["antimonium-drill-mkxx"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/shade.png",
                    width = 224,
                    height = 224,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-0, -0),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/bot-raw.png",
                    width = 224,
                    height = 224,
                    line_length = 9,
                    frame_count = 50,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-0, -0),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/top-raw.png",
                    width = 224,
                    height = 256,
                    line_length = 9,
                    frame_count = 50,
                    animation_speed = 0.3,
                    shift = util.by_pixel(-0, -240),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/sh.png",
                    width = 256,
                    height = 224,
                    line_length = 8,
                    frame_count = 50,
                    animation_speed = 0.3,
                    draw_as_shadow = true,
                    shift = util.by_pixel(16, -0),
                },
                {
                    filename = "__pyalternativeenergygraphics__/graphics/entity/antimonium-drill/l.png",
                    width = 224,
                    height = 480,
                    line_length = 1,
                    frame_count = 1,
                    repeat_count = 50,
                    draw_as_glow = true,
                    tint = {r = 1.0, g = 0.0, b = 1.0, a = 1.0},
                    animation_speed = 0.3,
                    blend_mode = "additive",
                    shift = util.by_pixel(-0, -128),
                },
            }
        },
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/antimonium-drill.ogg", volume = 0.55},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/antimonium-drill.ogg", volume = 0.1},
        apparent_volume = 2.5
    }
}
