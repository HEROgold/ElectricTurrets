data:extend({
  {
    type = "recipe",
    name = "electric-turret",
    enabled = false,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "gun-turret", amount = 1},
      {type = "item", name = "iron-gear-wheel", amount = 5},
      {type = "item", name = "electronic-circuit", amount = 50}
    },
    results = {
      {type = "item", name = "electric-turret", amount = 1}
    },
    requester_paste_multiplier = 20
  }
})
