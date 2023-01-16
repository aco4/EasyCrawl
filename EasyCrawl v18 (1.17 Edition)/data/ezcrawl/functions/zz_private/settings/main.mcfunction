# Enable all players to trigger toggleCrawl, as well as give a score of 0 to any players with no score.
# toggleCrawl = 0 : false (toggled off)
# toggleCrawl = 1 : true (toggled on) (default)
execute unless score @s toggleCrawl matches 0.. run scoreboard players set @s toggleCrawl 1
scoreboard players enable @s toggleCrawl
execute if score @s toggleCrawl matches 2.. run scoreboard players set @s toggleCrawl 0

# Default angles
execute unless score @s ezc.s.start matches -90..90 run scoreboard players set @s ezc.s.start 90
execute unless score @s ezc.s.stop matches -90..90 run scoreboard players set @s ezc.s.stop -75



# If player moves, stop showing settings
execute if score @s ezc.s.move matches 1.. run scoreboard players set @s customizeAngles 0

# Let players run settings unless moving
scoreboard players enable @s customizeAngles
execute if score @s ezc.s.move matches 1.. run trigger customizeAngles add 0

# Hide angle triggers unless customizeAngles was triggered
trigger setStartAngle add 0
trigger setStopAngle add 0
execute if score @s customizeAngles matches 1.. run function ezcrawl:zz_private/settings/triggered



scoreboard players reset @s ezc.s.move
