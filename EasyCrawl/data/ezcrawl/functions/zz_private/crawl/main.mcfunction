# Increment amount of time that this player has been crawling
scoreboard players add @s ezcrawl.crawling 1



# Try to move the shulker to the player, and store the success value
# We use a dimension check because if the player travels to another dimension, they unload the previous dimension and the shulker along with it
execute store success score #ezcrawl.success ezcrawl.crawling as @e[type=armor_stand,tag=ezcrawl.armor_stand,distance=0..] if score @s ezcrawl.crawlID = @p ezcrawl.crawlID run function ezcrawl:zz_private/crawl/move_to_player

# If the success value is 0 (shulker was unable to move to the player), stop
execute if score #ezcrawl.success ezcrawl.crawling matches 0 run function ezcrawl:zz_private/crawl/stop



### Check stop angle
# Get pitch
execute store result score #ezcrawl.player_pitch ezcrawl.crawling run data get entity @s Rotation[1]

# Test if in range
execute if score #ezcrawl.player_pitch ezcrawl.crawling < @s ezcrawl.settings.stop_angle run function ezcrawl:zz_private/crawl/stop


# If the player fails can_crawl.json, stop
execute unless predicate ezcrawl:can_crawl run function ezcrawl:zz_private/crawl/stop
