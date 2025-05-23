# Enable all players to trigger crawl setting objectives
execute as @a run function ezcrawl:zz_private/settings/main

# Crawl-start sequence
execute as @a[predicate=ezcrawl:can_start_crawling] at @s run function ezcrawl:zz_private/crawl/start/check_start_angle



# Main crawl sequence
scoreboard players set @e[type=item_display,tag=ezcrawl.vehicle] ezcrawl.active 0
execute as @a[scores={ezcrawl.crawling=0..}] at @s run function ezcrawl:zz_private/crawl/main



# If the player was unable to execute the crawl sequence (due to dimension change or quit), kill the vehicle
execute as @e[type=item_display,tag=ezcrawl.vehicle,scores={ezcrawl.active=0}] run function ezcrawl:zz_private/crawl/kill

# All vehicles who lost their shulker kill themselves
execute as @e[type=item_display,tag=ezcrawl.vehicle,predicate=!ezcrawl:has_passenger] run function ezcrawl:zz_private/crawl/kill

# All shulkers who lost their vehicle kill themselves
execute as @e[type=shulker,tag=ezcrawl.shulker,predicate=!ezcrawl:has_vehicle] run function ezcrawl:zz_private/crawl/kill



# If there is an entity standing on the shulker, have it fall through
execute as @e[type=shulker,tag=ezcrawl.shulker] at @s positioned ~-0.96875 ~0.03125 ~-0.96875 as @e[dx=0,tag=!ezcrawl.crawl_entity] positioned ~0.9375 ~-0.9375 ~0.9375 if entity @s[dx=0,predicate=ezcrawl:standing_on] at @s run tp @s ~ ~-0.0625 ~


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
