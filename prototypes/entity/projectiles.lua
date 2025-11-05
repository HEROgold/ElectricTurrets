data:extend({
  -- Definizione dell'esplosione elettrica
  {
    type = "explosion",
    name = "electric-explosion",
    flags = {"not-on-map"},
    animations = {
      {
        filename = "__ElectroTurret__/graphics/entity/shock-turret/electric-explosion.png",
        priority = "high",
        width = 128,
        height = 128,
        frame_count = 1,
        line_length = 1,
        animation_speed = 0.5,
        shift = {0, 0}
      }
    },
    light = {intensity = 1, size = 10},
    sound = {
      
      {filename = "__ElectroTurret__/sound/explosion.ogg", volume = 1.0}
    }
  },
  
  -- Definizione del proiettile shock-lightning
  {
    type = "projectile",
    name = "shock-lightning",
    flags = {"not-on-map"},
    acceleration = 0.05,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "damage",
            damage = { amount = 8, type = "electric" }
          },
          {
            type = "create-entity",
            entity_name = "electric-explosion" -- Qui usiamo l'entità appena definita
          }
        }
      }
    },
    light = { intensity = 0.5, size = 10 },
     animation = {
      filename = "__ElectroTurret__/graphics/entity/shock-turret/beam-body.png",
      tint = {r = 1.0, g = 1.0, b = 1.0},
      frame_count = 16,   -- Numero di frame totali
      width = 45,         -- Larghezza di un singolo frame
      height = 39,        -- Altezza di un singolo frame
      priority = "high",
      blend_mode = "additive-soft",
      line_length = 16,    -- Numero di frame per riga
      animation_speed = 0.5
    },
    speed = 0.30,
    shadow = {
      filename = "__ElectroTurret__/graphics/entity/shock-turret/projectile-shadow.png",
      frame_count = 1,
      width = 16,
      height = 16,
      priority = "high",
      draw_as_shadow = true
    }
  }
})
