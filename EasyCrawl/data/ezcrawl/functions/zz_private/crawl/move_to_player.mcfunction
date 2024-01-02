# Shulkers riding area_effect_clouds are 0.5 blocks above the area_effect_cloud's origin.
# 1.2 - 0.5 = 0.7
tp @s ~ ~0.7 ~

## Air Toggle
# Update the area_effect_cloud's Air nbt to decrease teleport interpolation, making the shulker move to the player in a more snappy manner
execute store result entity @s Air short 1 run scoreboard players get @s ezcrawl.main
scoreboard players add @s ezcrawl.main 1
execute if score @s ezcrawl.main matches 2 run scoreboard players set @s ezcrawl.main 0

# Indicate that the player still has a shulker and it successfully teleported to them
scoreboard players set #ezcrawl.success ezcrawl.main 1

# Indicate that the area_effect_cloud is still being moved around by the player and shouldn't be killed
scoreboard players set @s ezcrawl.active 1
