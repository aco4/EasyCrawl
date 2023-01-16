# Get pitch
execute store result score #ezcrawl.player_pitch ezc.main run data get entity @s Rotation[1]

# Test if in range
execute if score #ezcrawl.player_pitch ezc.main >= @s ezc.s.start run function ezcrawl:zz_private/crawl/start/summon_shulker
