# A player can automatically step up from a lower to a higher height if the difference is at most 0.6 (3⁄5) of a block.
# Highest climbable block as of 1.19: Chain at 0.59375 blocks
# Player hitbox size while crawling: 0.6 blocks
# Shulker must be 1.19375 blocks above the player to allow crawling up onto a chain block, 1.2 blocks to allow crawling up a 0.6 incline
# Shulker does not dismount area_effect_clouds underwater! But will dismount armor_stands???



scoreboard players add @s ezc.crawling 1



# Try to move to the player
# Must be in same dimension to move to player (distance=0..)
# If unsuccessful (not in same dimension), stop crawling
execute store success score #ezcrawl.success ezc.crawling as @e[type=area_effect_cloud,tag=ezcrawl.vehicle,distance=0..] if score @s ezc.crawlID = @p ezc.crawlID run function ezcrawl:zz_private/crawl/move_to_player
execute if score #ezcrawl.success ezc.crawling matches 0 run function ezcrawl:zz_private/crawl/stop



### Check stop angle
# Get pitch
execute store result score #ezcrawl.player_pitch ezc.crawling run data get entity @s Rotation[1]

# Test if in range
execute if score #ezcrawl.player_pitch ezc.crawling < @s ezc.s.stop run function ezcrawl:zz_private/crawl/stop



execute unless predicate ezcrawl:can_crawl run function ezcrawl:zz_private/crawl/stop
