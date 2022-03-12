#Get pitch
execute store result score #cr_crawl.player_pitch cr_crawl.data run data get entity @s Rotation[1]

#Test if in range
execute if score #cr_crawl.player_pitch cr_crawl.data <= @s max_start_angle if score #cr_crawl.player_pitch cr_crawl.data >= @s min_start_angle run function croesus:start/summon_shulker
