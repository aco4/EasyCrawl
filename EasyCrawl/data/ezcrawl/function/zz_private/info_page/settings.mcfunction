function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezcrawl.info_page matches 100.. run tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:menu"},"hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}],"value":[{"text":""}]},"text":"< Back"}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Settings","bold":true,"underlined":true}
tellraw @s ""

execute unless score @s ezcrawl.info_page matches 100.. if score @s toggleCrawl matches 1 run tellraw @s ["Toggle crawling on/off for yourself ",{"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:zz_private/info_page/settings_interact/toggle_crawl"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"/trigger toggleCrawl"}],"value":[{"text":""}]},"text":"[ON]"}]
execute unless score @s ezcrawl.info_page matches 100.. if score @s toggleCrawl matches 0 run tellraw @s ["Toggle crawling on/off for yourself ",{"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:zz_private/info_page/settings_interact/toggle_crawl"},"color":"dark_red","hover_event":{"action":"show_text","contents":[{"text":"/trigger toggleCrawl"}],"value":[{"text":""}]},"text":"[OFF]"}]

execute if score @s ezcrawl.info_page matches 100.. if score @s toggleCrawl matches 1 run tellraw @s ["Toggle crawling on/off for yourself ",{"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:zz_private/info_page/menu_interact/toggle_crawl"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"/trigger toggleCrawl"}],"value":[{"text":""}]},"text":"[ON]"}]
execute if score @s ezcrawl.info_page matches 100.. if score @s toggleCrawl matches 0 run tellraw @s ["Toggle crawling on/off for yourself ",{"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:zz_private/info_page/menu_interact/toggle_crawl"},"color":"dark_red","hover_event":{"action":"show_text","contents":[{"text":"/trigger toggleCrawl"}],"value":[{"text":""}]},"text":"[OFF]"}]

tellraw @s ""
tellraw @s ["Change what angle you start/stop crawling ",{"bold":true,"click_event":{"action":"run_command","command":"/trigger customizeCrawlAngles"},"color":"green","hover_event":{"action":"show_text","contents":[{"text":"/trigger customizeCrawlAngles"}],"value":[{"text":""}]},"text":"[CUSTOMIZE]"}]
tellraw @s ""



scoreboard players reset @s ezcrawl.info_page
