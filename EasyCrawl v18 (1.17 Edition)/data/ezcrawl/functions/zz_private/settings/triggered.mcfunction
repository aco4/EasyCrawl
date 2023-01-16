# GUI
function ezcrawl:zz_private/settings/gui/display



# Cannot trigger again while settings GUI is running
trigger customizeAngles add 0



# Initial activation
execute if score @s customizeAngles matches 1 run function ezcrawl:zz_private/info_page/angle_customization
execute if score @s customizeAngles matches 1 run scoreboard players set @s customizeAngles 2



# Save current angle to player's settings
scoreboard players enable @s setStartAngle
scoreboard players enable @s setStopAngle
execute if score @s setStartAngle matches 1.. run function ezcrawl:zz_private/settings/set_start_angle
execute if score @s setStopAngle matches 1.. run function ezcrawl:zz_private/settings/set_stop_angle
