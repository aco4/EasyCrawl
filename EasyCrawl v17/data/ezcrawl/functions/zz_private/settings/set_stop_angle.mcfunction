# Save angle
execute store result score @s ezcrawl.settings.stop_angle run data get entity @s Rotation[1]

# If angles overlap, push back start_angle
execute if score @s ezcrawl.settings.start_angle < @s ezcrawl.settings.stop_angle run scoreboard players operation @s ezcrawl.settings.start_angle = @s ezcrawl.settings.stop_angle

# Reset trigger
scoreboard players set @s setCrawlStopAngle 0
