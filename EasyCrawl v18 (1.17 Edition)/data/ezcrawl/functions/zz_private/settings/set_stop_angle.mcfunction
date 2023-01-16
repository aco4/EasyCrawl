# Save angle
execute store result score @s ezc.s.stop run data get entity @s Rotation[1]

# If angles overlap, push back start_angle
execute if score @s ezc.s.start < @s ezc.s.stop run scoreboard players operation @s ezc.s.start = @s ezc.s.stop

# Reset trigger
scoreboard players set @s setStopAngle 0
