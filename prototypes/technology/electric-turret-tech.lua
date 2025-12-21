data:extend(
{
  {
    type = "technology",
    name = "electric-turret",
    icon = "__heroic-electric-turret__/graphics/technology/electric-turret.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-turret"
      }
    },
    prerequisites = {"military", "gun-turret"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1}
      },
      time = 20
    },
    order = "a-c-a",
  }
}
)
