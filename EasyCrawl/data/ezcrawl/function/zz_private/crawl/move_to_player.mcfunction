scoreboard players set #ezcrawl.moving ezcrawl.main 0
execute if entity @p[predicate=ezcrawl:is_moving] run scoreboard players set #ezcrawl.moving ezcrawl.main 1
execute if score #ezcrawl.moving ezcrawl.main matches 0 run function ezcrawl:zz_private/crawl/teleport_small
execute if score #ezcrawl.moving ezcrawl.main matches 1 run function ezcrawl:zz_private/crawl/teleport_big

# Indicate that the player still has a shulker and it successfully teleported to them
scoreboard players set #ezcrawl.success ezcrawl.main 1

# Indicate that the vehicle is still being moved around by the player and shouldn't be killed
scoreboard players set @s ezcrawl.active 1
