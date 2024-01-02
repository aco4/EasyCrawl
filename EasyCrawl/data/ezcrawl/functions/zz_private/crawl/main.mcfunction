# Increment amount of time that this player has been crawling
scoreboard players add @s ezcrawl.crawling 1


# Fallback
scoreboard players set #ezcrawl.success ezcrawl.main 0


# Try to move the shulker to the player
# Only try to move shulkers that are in the same dimension (distance=0..) because if the player travels to another dimension, they unload the previous dimension and the shulker along with it (we cannot teleport it anymore)
execute as @e[type=area_effect_cloud,tag=ezcrawl.area_effect_cloud,distance=0..] if score @s ezcrawl.crawlID = @p ezcrawl.crawlID run function ezcrawl:zz_private/crawl/move_to_player


# If not successful, stop
execute if score #ezcrawl.success ezcrawl.main matches 0 run function ezcrawl:zz_private/crawl/stop


### Check stop angle
# Get pitch
execute store result score #ezcrawl.player_pitch ezcrawl.main run data get entity @s Rotation[1]

# Test if in range
execute if score #ezcrawl.player_pitch ezcrawl.main < @s ezcrawl.settings.stop_angle run function ezcrawl:zz_private/crawl/stop


# If the player fails can_crawl.json, stop
execute unless predicate ezcrawl:can_crawl run function ezcrawl:zz_private/crawl/stop
