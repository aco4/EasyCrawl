#enable all players to trigger toggleCrawl, as well as give a score of 0 to any players with no score.
#toggleCrawl = 1 : false (toggled off)
#toggleCrawl = 2 : true (toggled on) (default)
scoreboard players enable @s toggleCrawl
execute if score @s toggleCrawl matches ..0 run scoreboard players set @s toggleCrawl 2
execute if score @s toggleCrawl matches 3.. run scoreboard players set @s toggleCrawl 1

execute unless score @s min_start_angle matches -90..90 run scoreboard players set @s min_start_angle 90
execute unless score @s max_start_angle matches -90..90 run scoreboard players set @s max_start_angle 90
execute unless score @s min_stop_angle matches -90..90 run scoreboard players set @s min_stop_angle -90
execute unless score @s max_stop_angle matches -90..90 run scoreboard players set @s max_stop_angle -75
scoreboard players enable @s min_start_angle
scoreboard players enable @s max_start_angle
scoreboard players enable @s min_stop_angle
scoreboard players enable @s max_stop_angle
