data:extend(
{
  {
    type = "technology",
    name = "shock-turret",
    icon = "__ElectroTurret__/graphics/technology/shock-turret.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "shock-turret"
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
