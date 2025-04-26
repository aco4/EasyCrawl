# Player step size = 0.6
# Player hitbox = 0.6
execute if entity @s[tag=ezcrawl.NW] run tp @s ~-0.6625 ~1.2 ~-0.6625
execute if entity @s[tag=ezcrawl.N] run tp @s ~ ~1.2 ~-0.6625
execute if entity @s[tag=ezcrawl.NE] run tp @s ~0.6625 ~1.2 ~-0.6625
execute if entity @s[tag=ezcrawl.W] run tp @s ~-0.6625 ~1.2 ~
execute if entity @s[tag=ezcrawl.C] run tp @s ~ ~1.2 ~
execute if entity @s[tag=ezcrawl.E] run tp @s ~0.6625 ~1.2 ~
execute if entity @s[tag=ezcrawl.SW] run tp @s ~-0.6625 ~1.2 ~0.6625
execute if entity @s[tag=ezcrawl.S] run tp @s ~ ~1.2 ~0.6625
execute if entity @s[tag=ezcrawl.SE] run tp @s ~0.6625 ~1.2 ~0.6625

# Indicate that the player still has a shulker and it successfully teleported to them
scoreboard players set #ezcrawl.success ezcrawl.main 1

# Indicate that the vehicle is still being moved around by the player and shouldn't be killed
scoreboard players set @s ezcrawl.active 1
