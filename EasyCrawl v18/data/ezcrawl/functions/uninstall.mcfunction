scoreboard objectives remove ezcrawl.crawlID
scoreboard objectives remove ezcrawl.crawling
scoreboard objectives remove ezcrawl.active

scoreboard objectives remove ezcrawl.settings.start_angle
scoreboard objectives remove ezcrawl.settings.stop_angle

scoreboard objectives remove ezcrawl.settings.movement

scoreboard objectives remove toggleCrawl
scoreboard objectives remove customizeCrawlAngles
scoreboard objectives remove setCrawlStartAngle
scoreboard objectives remove setCrawlStopAngle

scoreboard objectives remove ezcrawl.info_page

kill @e[tag=ezcrawl.crawl_entity]

tellraw @s ""
tellraw @s {"text":"UNINSTALLED","color":"dark_red","bold":"true"}
tellraw @s ""
tellraw @s [{"text":"EasyCrawl has successfully wiped all traces of itself from this world! You may now "},{"text":"disable the datapack","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"/datapack disable "}]},"clickEvent":{"action":"suggest_command","value":"/datapack disable "}},{"text":"."}]
tellraw @s ""
tellraw @s [{"text":"If you wish to restore the datapack, type "},{"text":"/reload","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"/reload"}]},"clickEvent":{"action":"suggest_command","value":"/reload"}},{"text":". This will also restore default settings."}]
tellraw @s ""
