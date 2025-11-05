data:extend({
  {
    type = "item",
    name = "shock-turret",
    icon = "__ElectroTurret__/graphics/icons/shock-turret.png",
    icon_size = 64,  -- Updated to Factorio 2.0 standard
    subgroup = "defensive-structure",
    order = "b[turret]-e[shock-turret]",  -- No change needed for the order
    place_result = "shock-turret",
    stack_size = 50  -- Stack size is fine, remains consistent with 2.0 best practices
  }
})
