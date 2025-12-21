-- TODO: Needs re-balancing

data:extend({
  -- electric Turret Damage Technology
  {
    type = "technology",
    name = "electric-turret-damage-1",
    icon_size = 128,
    icon = "__heroic-electric-turret__/graphics/technology/electric-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.1
      }
    },
    prerequisites = {"electric-turret"},
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
    name = "electric-turret-damage-2",
    icon_size = 128,
    icon = "__heroic-electric-turret__/graphics/technology/electric-turret-damage.png",
    effects = {
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.1
      }
    },
    prerequisites = {"electric-turret-damage-1"},
    unit = {
      count = 100,
      ingredients = {{"automation-science-pack", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-n-b"
  },
  -- electric Turret Speed Technologies
  {
    type = "technology",
    name = "electric-turret-speed-1",
    icon_size = 128,
    icon = "__heroic-electric-turret__/graphics/technology/electric-turret-speed.png",
    effects = {
      {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.1
      }
    },
    prerequisites = {"electric-turret"},
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
    name = "electric-turret-speed-2",
    icon_size = 128,
    icon = "__heroic-electric-turret__/graphics/technology/electric-turret-speed.png",
    effects = {
      {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.2
      }
    },
    prerequisites = {"electric-turret-speed-1"},
    unit = {
      count = 100,
      ingredients = {{"automation-science-pack", 1}},
      time = 30
    },
    upgrade = true,
    order = "e-n-i"
  }
})
