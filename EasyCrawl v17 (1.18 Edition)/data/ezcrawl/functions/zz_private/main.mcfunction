# Enable all players to trigger crawl setting objectives
execute as @a run function ezcrawl:zz_private/settings/main

# Crawl-start sequence
execute as @a[predicate=ezcrawl:can_start_crawling] at @s positioned ~ ~1.19375 ~ unless predicate ezcrawl:in_fluid at @s run function ezcrawl:zz_private/crawl/start/check_start_angle



# Main crawl sequence
scoreboard players set @e[type=armor_stand,tag=ezcrawl.armor_stand] ezcrawl.active 0
execute as @a[scores={ezcrawl.crawling=0..}] at @s run function ezcrawl:zz_private/crawl/main



# If the player was unable to execute the crawl sequence (due to dimension change or quit), kill the armor stand
execute as @e[type=armor_stand,tag=ezcrawl.armor_stand,scores={ezcrawl.active=0}] run function ezcrawl:zz_private/crawl/kill

# All armor stands who lost their shulker kill themselves
execute as @e[type=armor_stand,tag=ezcrawl.armor_stand,predicate=!ezcrawl:has_crawl_shulker_passenger] run function ezcrawl:zz_private/crawl/kill

# All shulkers who lost their armor stand kill themselves
execute as @e[type=shulker,tag=ezcrawl.shulker,predicate=!ezcrawl:riding_crawl_stand] run function ezcrawl:zz_private/crawl/kill



# If there is an entity standing on the shulker, have it fall through
execute as @e[type=shulker,tag=ezcrawl.shulker] at @s positioned ~-0.5 ~0.01 ~-0.5 if entity @e[dx=0,tag=!ezcrawl.crawl_entity,tag=!ezcrawl.fall_through_immune] run function ezcrawl:zz_private/crawl/fall_through



# Display info pages
execute as @a[scores={ezcrawl.info_page=1}] run function ezcrawl:zz_private/info_page/info
execute as @a[scores={ezcrawl.info_page=2}] run function ezcrawl:zz_private/info_page/settings
execute as @a[scores={ezcrawl.info_page=3}] run function ezcrawl:zz_private/info_page/help
execute as @a[scores={ezcrawl.info_page=4}] run function ezcrawl:zz_private/info_page/credits
execute as @a[scores={ezcrawl.info_page=5}] run function ezcrawl:zz_private/info_page/menu

# Display info pages with a back button
execute as @a[scores={ezcrawl.info_page=101}] run function ezcrawl:zz_private/info_page/info
execute as @a[scores={ezcrawl.info_page=102}] run function ezcrawl:zz_private/info_page/settings
execute as @a[scores={ezcrawl.info_page=103}] run function ezcrawl:zz_private/info_page/help
execute as @a[scores={ezcrawl.info_page=104}] run function ezcrawl:zz_private/info_page/credits