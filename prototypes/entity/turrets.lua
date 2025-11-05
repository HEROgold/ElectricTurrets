function shock_turret_extension(inputs)
    return {
        filename = "__ElectroTurret__/graphics/entity/shock-turret/shock-turret-gun-start.png",
        priority = "medium",
        width = 66,
        height = 67,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        axially_symmetrical = false,
        direction_count = 4,
        shift = { -0.03125, -0.984375 }
    }
end

function shock_turret_extension_shadow(inputs)
    return {
        filename = "__ElectroTurret__/graphics/entity/shock-turret/shock-turret-gun-start-shadow.png",
        width = 92,
        height = 50,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        axially_symmetrical = false,
        direction_count = 4,
        draw_as_shadow = true,
        shift = { 1.375, 0 }
    }
end

function shock_turret_extension_mask(inputs)
    return {
        filename = "__ElectroTurret__/graphics/entity/shock-turret/shock-turret-gun-start-mask.png",
        flags = { "mask" },
        width = 51,
        height = 47,
        frame_count = inputs.frame_count or 15,
        line_length = inputs.line_length or 0,
        run_mode = inputs.run_mode or "forward",
        axially_symmetrical = false,
        apply_runtime_tint = true,
        direction_count = 4,
        shift = { -0.015625, -1.26563 }
    }
end

data:extend({
    {
        type = "electric-turret",
        name = "shock-turret",
        icon = "__ElectroTurret__/graphics/icons/shock-turret.png",
        icon_size = 64,
        flags = { "placeable-player", "placeable-enemy", "player-creation" },
        minable = { mining_time = 0.5, result = "shock-turret" },
        max_health = 400,
        resistances = {
            {
                type = "fire",
                percent = 50
            },
            {
                type = "explosion",
                percent = 30
            }
        },
        corpse = "medium-remnants",
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        selection_box = { { -1, -1 }, { 1, 1 } },
        rotation_speed = 0.01,
        preparing_speed = 0.05,
        folding_speed = 0.05,
        dying_explosion = "medium-explosion",
        energy_source = {
            type = "electric",
            buffer_capacity = "800kJ",
            input_flow_limit = "9600kW",
            drain = "12kW",
            usage_priority = "primary-input"
        },
        folded_animation = {
            layers = {
                shock_turret_extension { frame_count = 1, line_length = 1 },
                shock_turret_extension_shadow { frame_count = 1, line_length = 1 },
                shock_turret_extension_mask { frame_count = 1, line_length = 1 }
            }
        },
        preparing_animation = {
            layers = {
                shock_turret_extension {},
                shock_turret_extension_shadow {},
                shock_turret_extension_mask {}
            }
        },
        prepared_animation = {
            layers = {
                {
                    filename = "__ElectroTurret__/graphics/entity/shock-turret/shock-turret-gun.png",
                    line_length = 8,
                    width = 68,
                    height = 68,
                    frame_count = 1,
                    direction_count = 64,
                    shift = { -0.03125, -1 }
                },
                {
                    filename = "__ElectroTurret__/graphics/entity/shock-turret/shock-turret-gun-mask.png",
                    flags = { "mask" },
                    line_length = 8,
                    width = 54,
                    height = 44,
                    frame_count = 1,
                    apply_runtime_tint = true,
                    direction_count = 64,
                    shift = { -0.03125, -1.3125 }
                },
                {
                    filename = "__ElectroTurret__/graphics/entity/shock-turret/shock-turret-gun-shadow.png",
                    line_length = 8,
                    width = 88,
                    height = 52,
                    frame_count = 1,
                    direction_count = 64,
                    draw_as_shadow = true,
                    shift = { 1.5, 0 }
                }
            }
        },
        folding_animation = {
            layers = {
                shock_turret_extension { run_mode = "backward" },
                shock_turret_extension_shadow { run_mode = "backward" },
                shock_turret_extension_mask { run_mode = "backward" }
            }
        },
        base_picture = {
            layers = {
                {
                    filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
                    priority = "high",
                    width = 138,
                    height = 104,
                    shift = util.by_pixel(-0.5, 2),
                    scale = 0.5
                },
                {
                    filename = "__ElectroTurret__/graphics/entity/shock-turret/shock-turret-base-mask.png",
                    flags = { "mask" },
                    width = 54,
                    height = 45,
                    apply_runtime_tint = true,
                    direction_count = 1,
                    frame_count = 1,
                    shift = { -0.046875, -0.109375 }
                 }
            }
        },
        vehicle_impact_sound = {
            filename = "__base__/sound/car-metal-impact.ogg",
            volume = 0.65
        },
        attack_parameters = {
            type = "projectile",
            ammo_category = "shock-turret",
            cooldown = 25,
            projectile_center = { -0.09375, -0.2 },
            projectile_creation_distance = 1.4,
            range = 20,
            sound = {
                filename = "__ElectroTurret__/sound/shock-turret-attack.ogg",
                volume = 0.4
            },
            damage_modifier = 1.0,
            ammo_type = {
                type = "projectile",
                category = "electric",
                energy_consumption = "200kJ",
                action = {
                    {
                        type = "direct",
                        action_delivery = {
                            {
                                type = "projectile",
                                projectile = "shock-lightning",
                                starting_speed = 0.8
                            }
                        }
                    }
                }
            }
        },
        call_for_help_radius = 40,
        graphics_set =
        {
            base_visualisation =
            {
                animation =
                {
                    layers =
                    {
                        {
                            filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
                            priority = "high",
                            width = 138,
                            height = 104,
                            shift = util.by_pixel(-0.5, 2),
                            scale = 0.5
                        },
                        {
                            filename = "__ElectroTurret__/graphics/entity/shock-turret/shock-turret-gun-shadow.png",
                            line_length = 8,
                            width = 88,
                            height = 52,
                            frame_count = 1,
                            direction_count = 64,
                            draw_as_shadow = true,
                            shift = { 1.5, 0 },
                        }
                    }
                }
            }
        },
    }
})