# Get pitch
execute store result score #ezcrawl.player_pitch ezcrawl.main run data get entity @s Rotation[1]

# Test if in range
execute if score #ezcrawl.player_pitch ezcrawl.main >= @s ezcrawl.settings.start_angle run function ezcrawl:zz_private/crawl/start/summon_shulker
