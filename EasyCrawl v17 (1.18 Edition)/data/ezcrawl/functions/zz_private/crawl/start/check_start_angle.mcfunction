# Get pitch
execute store result score #ezcrawl.player_pitch ezcrawl.crawling run data get entity @s Rotation[1]

# Test if in range
execute if score #ezcrawl.player_pitch ezcrawl.crawling >= @s ezcrawl.settings.start_angle run function ezcrawl:zz_private/crawl/start/summon_shulker
