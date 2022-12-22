# GUI
function ezcrawl:zz_private/settings/gui/display



# Cannot trigger again while settings GUI is running
trigger customizeCrawlAngles add 0



# Initial activation
execute if score @s customizeCrawlAngles matches 1 run function ezcrawl:zz_private/info_page/angle_customization
execute if score @s customizeCrawlAngles matches 1 run scoreboard players set @s customizeCrawlAngles 2



# Save current angle to player's settings
scoreboard players enable @s setCrawlStartAngle
scoreboard players enable @s setCrawlStopAngle
execute if score @s setCrawlStartAngle matches 1.. run function ezcrawl:zz_private/settings/set_start_angle
execute if score @s setCrawlStopAngle matches 1.. run function ezcrawl:zz_private/settings/set_stop_angle
