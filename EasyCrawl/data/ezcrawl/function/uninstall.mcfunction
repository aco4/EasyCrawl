scoreboard objectives remove ezcrawl.main

scoreboard objectives remove ezcrawl.crawlID

scoreboard objectives remove ezcrawl.crawling
scoreboard objectives remove ezcrawl.active

scoreboard objectives remove ezcrawl.settings.start_angle
scoreboard objectives remove ezcrawl.settings.stop_angle

scoreboard objectives remove toggleCrawl
scoreboard objectives remove customizeCrawlAngles
scoreboard objectives remove setCrawlStartAngle
scoreboard objectives remove setCrawlStopAngle

scoreboard objectives remove ezcrawl.info_page

kill @e[tag=ezcrawl.crawl_entity]

tellraw @s ""
tellraw @s {"text":"UNINSTALLED","color":"dark_red","bold":true}
tellraw @s ""
tellraw @s ["EasyCrawl has successfully wiped all traces of itself from this world! You may now ",{"click_event":{"action":"suggest_command","command":"/datapack disable "},"color":"red","hover_event":{"action":"show_text","contents":[{"text":"/datapack disable "}],"value":[{"text":""}]},"text":"disable the datapack"},"."]
tellraw @s ""
tellraw @s ["If you wish to restore the datapack, type ",{"click_event":{"action":"suggest_command","command":"/reload"},"color":"red","hover_event":{"action":"show_text","contents":[{"text":"/reload"}],"value":[{"text":""}]},"text":"/reload"},". This will also restore default settings."]
tellraw @s ""
