# Save angle
execute store result score @s ezc.s.start run data get entity @s Rotation[1]

# If angles overlap, push back stop_angle
execute if score @s ezc.s.start < @s ezc.s.stop run scoreboard players operation @s ezc.s.stop = @s ezc.s.start

# Reset trigger
scoreboard players set @s setStartAngle 0
