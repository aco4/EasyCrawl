# Enable all players to trigger toggleCrawl, as well as give a score of 0 to any players with no score.
# toggleCrawl = 0 : false (toggled off)
# toggleCrawl = 1 : true (toggled on) (default)
execute unless score @s toggleCrawl matches 0.. run scoreboard players set @s toggleCrawl 1
scoreboard players enable @s toggleCrawl
execute if score @s toggleCrawl matches 2.. run scoreboard players set @s toggleCrawl 0

# Default angles
execute unless score @s ezcrawl.settings.start_angle matches -90..90 run scoreboard players set @s ezcrawl.settings.start_angle 90
execute unless score @s ezcrawl.settings.stop_angle matches -90..90 run scoreboard players set @s ezcrawl.settings.stop_angle -75



# If player moves, stop showing settings
execute if score @s ezcrawl.settings.movement matches 1.. run scoreboard players set @s customizeCrawlAngles 0

# Let players run settings unless moving
scoreboard players enable @s customizeCrawlAngles
execute if score @s ezcrawl.settings.movement matches 1.. run trigger customizeCrawlAngles add 0

# Hide angle triggers unless customizeCrawlAngles was triggered
trigger setCrawlStartAngle add 0
trigger setCrawlStopAngle add 0
execute if score @s customizeCrawlAngles matches 1.. run function ezcrawl:zz_private/settings/triggered



scoreboard players reset @s ezcrawl.settings.movement
