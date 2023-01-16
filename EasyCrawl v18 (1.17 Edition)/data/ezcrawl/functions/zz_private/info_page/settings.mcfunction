function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezcrawl.info_page matches 100.. run tellraw @s {"text":"< Back","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:menu"}}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Settings","bold":true,"underlined":true}
tellraw @s ""

execute unless score @s ezcrawl.info_page matches 100.. if score @s toggleCrawl matches 1 run tellraw @s [{"text":"Toggle crawling on/off for yourself "},{"text":"[ON]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger toggleCrawl"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:zz_private/info_page/settings_interact/toggle_crawl"}}]
execute unless score @s ezcrawl.info_page matches 100.. if score @s toggleCrawl matches 0 run tellraw @s [{"text":"Toggle crawling on/off for yourself "},{"text":"[OFF]","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger toggleCrawl"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:zz_private/info_page/settings_interact/toggle_crawl"}}]

execute if score @s ezcrawl.info_page matches 100.. if score @s toggleCrawl matches 1 run tellraw @s [{"text":"Toggle crawling on/off for yourself "},{"text":"[ON]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger toggleCrawl"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:zz_private/info_page/menu_interact/toggle_crawl"}}]
execute if score @s ezcrawl.info_page matches 100.. if score @s toggleCrawl matches 0 run tellraw @s [{"text":"Toggle crawling on/off for yourself "},{"text":"[OFF]","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger toggleCrawl"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:zz_private/info_page/menu_interact/toggle_crawl"}}]

tellraw @s ""
tellraw @s [{"text":"Change what angle you start/stop crawling "},{"text":"[CUSTOMIZE]","color":"green","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger customizeCrawlAngles"}]},"clickEvent":{"action":"run_command","value":"/trigger customizeCrawlAngles"}}]
tellraw @s ""



scoreboard players reset @s ezcrawl.info_page
