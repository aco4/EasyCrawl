#Highest climbable incline: 0.59375 blocks (chain)
#Player hitbox size while crawling: 0.6 blocks
#Shulker must be 1.19375 blocks above the player to allow crawling onto a chain block
execute as @e[type=armor_stand,tag=cr_crawl.crawl_stand] if score @s cr_crawl.crawlID = @p cr_crawl.crawlID run tp @s ~ ~1.19375 ~



execute if entity @s[nbt={OnGround:0b}] run function croesus:stop
function croesus:check_stop_angle
execute if entity @s[gamemode=spectator] run function croesus:stop
execute if block ~ ~ ~ #croesus:cannot_crawl_in run function croesus:stop
execute if score @s toggleCrawl matches 1 run function croesus:stop
