local factor = 5

RECIPE {
    type = "recipe",
    name = "steam-turbine-mk02",
    energy_required = 5,
    enabled = false,
    ingredients = {
        {type = "item", name = "stainless-steel",         amount = 100 * factor},
        {type = "item", name = "steel-plate",             amount = 40 * factor},
        {type = "item", name = "duralumin",               amount = 15 * factor},
        {type = "item", name = "shaft-mk02",              amount = 1 * factor},
        {type = "item", name = "small-parts-02",          amount = 100 * factor},
        {type = "item", name = "nexelit-plate",           amount = 30 * factor},
        {type = "item", name = "rubber",                  amount = 20 * factor},
        {type = "item", name = "brake-mk02",              amount = 5 * factor},
        {type = "item", name = "utility-box-mk02",        amount = 2 * factor},
        {type = "item", name = "controler-mk02",          amount = 1 * factor},
        {type = "item", name = "gearbox-mk02",            amount = 1 * factor},
        {type = "item", name = "advanced-circuit",        amount = 10 * factor},
        {type = "item", name = "self-assembly-monolayer", amount = 20 * factor},
        {type = "item", name = "centrifuge-mk01",         amount = 1},
        {type = "item", name = "steam-turbine-mk01",      amount = 1},
    },
    results = {
        {type = "item", name = "steam-turbine-mk02", amount = 1}
    }
}:add_unlock("nonrenewable-mk02")

ITEM {
    type = "item",
    name = "steam-turbine-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/steam-turbine-mk02.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-alternativeenergy-buildings-mk02",
    order = "e",
    place_result = "steam-turbine-mk02",
    stack_size = 10
}

ENTITY {
    type = "generator",
    name = "steam-turbine-mk02",
    icon = "__pyalternativeenergygraphics__/graphics/icons/steam-turbine-mk02.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "steam-turbine-mk02"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 1,
    fluid_usage_per_tick = 10,
    maximum_temperature = 2000,
    destroy_non_fuel_fluid = false,
    resistances = {
        {
            type = "fire",
            percent = 70
        }
    },
    collision_box = {{-3.3, -3.3}, {3.3, 3.3}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    fluid_input = {
        name = "pressured-steam",
        amount = 0.0,
        minimum_temperature = 1000.0
    },
    fluid_box = {
        volume = 1200,
        pipe_covers = py.pipe_covers(true, true, true, true),
        pipe_picture = py.pipe_pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
        production_type = "input-output",
        filter = "pressured-steam",
        minimum_temperature = 500.0,
        pipe_connections = {
            {flow_direction = "input-output", position = {0, 3.0},  direction = defines.direction.south},
            {flow_direction = "input-output", position = {-3.0, 0}, direction = defines.direction.west},
            {flow_direction = "input-output", position = {0, -3.0}, direction = defines.direction.north},
            {flow_direction = "input-output", position = {3.0, 0},  direction = defines.direction.east},
        }
    },
    energy_source = {
        type = "electric",
        usage_priority = "secondary-output",
    },
    horizontal_animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk02/top.png",
                width = 224,
                height = 192,
                frame_count = 30,
                line_length = 6,
                shift = util.by_pixel(0, -176),
                animation_speed = 1 / 2,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk02/bot.png",
                width = 224,
                height = 192,
                frame_count = 1,
                line_length = 1,
                repeat_count = 30,
                shift = util.by_pixel(0, 16),
                animation_speed = 1 / 2,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk02/sh.png",
                width = 256,
                height = 230,
                frame_count = 1,
                line_length = 1,
                repeat_count = 30,
                shift = util.by_pixel(32, -3),
                animation_speed = 1 / 2,
                draw_as_shadow = true,
            },
        },
    },
    vertical_animation = {
        layers = {
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk02/top.png",
                width = 224,
                height = 192,
                frame_count = 30,
                line_length = 6,
                shift = util.by_pixel(0, -176),
                animation_speed = 1 / 2,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk02/bot.png",
                width = 224,
                height = 192,
                frame_count = 1,
                line_length = 1,
                repeat_count = 30,
                shift = util.by_pixel(0, 16),
                animation_speed = 1 / 2,
            },
            {
                filename = "__pyalternativeenergygraphics__/graphics/entity/steam-turbine-mk02/sh.png",
                width = 256,
                height = 230,
                frame_count = 1,
                line_length = 1,
                repeat_count = 30,
                shift = util.by_pixel(32, -3),
                animation_speed = 1 / 2,
                draw_as_shadow = true,
            },
        },
    },
    smoke = {
        {
            name = "turbine-smoke",
            north_position = {-0.0, -6.5},
            east_position = {-0.0, -6.5},
            frequency = 5 / 16,
            starting_vertical_speed = 0.08,
            slow_down_factor = 1,
            starting_frame_deviation = 60,
        },
    },
    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.3,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact-1.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyalternativeenergygraphics__/sounds/steam-turbine-mk02.ogg", volume = 0.5},
        idle_sound = {filename = "__pyalternativeenergygraphics__/sounds/steam-turbine-mk02.ogg", volume = 0.15},
        apparent_volume = 0.45
    }
}
