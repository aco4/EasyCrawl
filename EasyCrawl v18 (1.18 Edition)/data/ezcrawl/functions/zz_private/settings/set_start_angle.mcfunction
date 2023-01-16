# Save angle
execute store result score @s ezcrawl.settings.start_angle run data get entity @s Rotation[1]

# If angles overlap, push back stop_angle
execute if score @s ezcrawl.settings.start_angle < @s ezcrawl.settings.stop_angle run scoreboard players operation @s ezcrawl.settings.stop_angle = @s ezcrawl.settings.start_angle

# Reset trigger
scoreboard players set @s setCrawlStartAngle 0
