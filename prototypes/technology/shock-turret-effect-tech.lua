-- TODO: Needs re-balancing

data:extend({
  -- Shock Turret Damage Technology
  {
    type = "technology",
    name = "shock-turret-damage-1",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.1
      }
    },
    prerequisites = {"shock-turret"},
    unit = {
      count = 50,
      ingredients = {{"automation-science-pack", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-n-a"
  },
  {
    type = "technology",
    name = "shock-turret-damage-2",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.1
      }
    },
    prerequisites = {"shock-turret-damage-1"},
    unit = {
      count = 100,
      ingredients = {{"automation-science-pack", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-n-b"
  },
  -- The next technologies follow a similar pattern, updated for consistency in Factorio 2.0
  {
    type = "technology",
    name = "shock-turret-damage-3",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.3
      }
    },
    prerequisites = {"shock-turret-damage-2"},
    unit = {
      count = 100,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 60
    },
    upgrade = true,
    order = "e-n-c"
  },
  {
    type = "technology",
    name = "shock-turret-damage-4",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.3
      }
    },
    prerequisites = {"shock-turret-damage-3"},
    unit = {
      count = 200,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 60
    },
    upgrade = true,
    order = "e-n-d"
  },
  {
    type = "technology",
    name = "shock-turret-damage-5",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.3
      }
    },
    prerequisites = {"shock-turret-damage-4"},
    unit = {
      count = 200,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"military-science-pack", 1}},
      time = 60
    },
    upgrade = true,
    order = "e-n-e"
  },
  {
    type = "technology",
    name = "shock-turret-damage-6",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.5
      }
    },
    prerequisites = {"shock-turret-damage-5"},
    unit = {
      count = 350,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"military-science-pack", 1}},
      time = 60
    },
    upgrade = true,
    order = "e-n-f"
  },
  {
    type = "technology",
    name = "shock-turret-damage-7",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.7
      }
    },
    prerequisites = {"shock-turret-damage-6"},
    unit = {
      count = 500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-n-g"
  },
  {
    type = "technology",
    name = "shock-turret-damage-8",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.7
      }
    },
    prerequisites = {"shock-turret-damage-7"},
    unit = {
      count_formula = "2^(L-8)*1000",
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    max_level = "infinite",
    upgrade = true,
    order = "e-n-g"
  },

  -- Shock Turret Speed Technologies
  {
    type = "technology",
    name = "shock-turret-speed-1",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-speed.png",
    effects = {
      {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.1
      }
    },
    prerequisites = {"shock-turret"},
    unit = {
      count = 50,
      ingredients = {{"automation-science-pack", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-n-h"
  },
  {
    type = "technology",
    name = "shock-turret-speed-2",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-speed.png",
    effects = {
      {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.2
      }
    },
    prerequisites = {"shock-turret-speed-1"},
    unit = {
      count = 100,
      ingredients = {{"automation-science-pack", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-n-i"
  },
  {
    type = "technology",
    name = "shock-turret-speed-3",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-speed.png",
    effects = {
      {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.3
      }
    },
    prerequisites = {"shock-turret-speed-2"},
    unit = {
      count = 200,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 60
    },
    upgrade = true,
    order = "e-n-j"
  },
  {
    type = "technology",
    name = "shock-turret-speed-4",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-speed.png",
    effects = {
      {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.3
      }
    },
    prerequisites = {"shock-turret-speed-3"},
    unit = {
      count = 200,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 60
    },
    upgrade = true,
    order = "e-n-k"
  },
  {
    type = "technology",
    name = "shock-turret-speed-5",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-speed.png",
    effects = {
      {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.4
      }
    },
    prerequisites = {"shock-turret-speed-4"},
    unit = {
      count = 200,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"military-science-pack", 1}},
      time = 60
    },
    upgrade = true,
    order = "e-n-l"
  },
  {
    type = "technology",
    name = "shock-turret-speed-6",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-speed.png",
    effects = {
      {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.4
      }
    },
    prerequisites = {"shock-turret-speed-5"},
    unit = {
      count = 350,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"military-science-pack", 1}},
      time = 60
    },
    upgrade = true,
    order = "e-n-m"
  },
  {
    type = "technology",
    name = "shock-turret-speed-7",
    icon_size = 128,
    icon = "__ElectroTurret__/graphics/technology/shock-turret-speed.png",
    effects = {
      {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.5
      }
    },
    prerequisites = {"shock-turret-speed-6"},
    unit = {
      count = 450,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "e-n-n"
  }
})
