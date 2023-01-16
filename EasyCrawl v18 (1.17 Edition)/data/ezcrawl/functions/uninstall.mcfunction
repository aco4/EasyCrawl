scoreboard objectives remove ezc.main

scoreboard objectives remove ezc.crawlID

scoreboard objectives remove ezc.crawling
scoreboard objectives remove ezc.active

scoreboard objectives remove ezc.s.start
scoreboard objectives remove ezc.s.stop
scoreboard objectives remove ezc.s.move

scoreboard objectives remove toggleCrawl
scoreboard objectives remove customizeAngles
scoreboard objectives remove setStartAngle
scoreboard objectives remove setStopAngle

scoreboard objectives remove ezc.info_page

kill @e[tag=ezcrawl.crawl_entity]

tellraw @s ""
tellraw @s {"text":"UNINSTALLED","color":"dark_red","bold":"true"}
tellraw @s ""
tellraw @s [{"text":"EasyCrawl has successfully wiped all traces of itself from this world! You may now "},{"text":"disable the datapack","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"/datapack disable "}]},"clickEvent":{"action":"suggest_command","value":"/datapack disable "}},{"text":"."}]
tellraw @s ""
tellraw @s [{"text":"If you wish to restore the datapack, type "},{"text":"/reload","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"/reload"}]},"clickEvent":{"action":"suggest_command","value":"/reload"}},{"text":". This will also restore default settings."}]
tellraw @s ""
