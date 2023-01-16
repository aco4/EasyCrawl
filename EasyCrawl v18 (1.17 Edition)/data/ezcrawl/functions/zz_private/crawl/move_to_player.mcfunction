# Shulkers riding area_effect_clouds are 0.375 blocks above the area_effect_cloud's center.
# 1.2 - 0.375 = 0.825
tp @s ~ ~0.825 ~

## Air Toggle
# Update the area_effect_cloud's Air nbt to decrease teleport interpolation, making the shulker move to the player in a more snappy manner
execute store result entity @s Air short 1 run scoreboard players get @s ezc.main
scoreboard players add @s ezc.main 1
execute if score @s ezc.main matches 2 run scoreboard players set @s ezc.main 0

scoreboard players set @s ezc.active 1
