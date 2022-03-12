scoreboard objectives remove cr_crawl.crawlID

scoreboard objectives remove cr_crawl.data

scoreboard objectives remove toggleCrawl
scoreboard objectives remove min_start_angle
scoreboard objectives remove max_start_angle
scoreboard objectives remove min_stop_angle
scoreboard objectives remove max_stop_angle

kill @e[tag=cr_crawl.crawl_entity]

tag @e remove cr_crawl.noID
tag @e remove cr_crawl.crawling
tag @e remove cr_crawl.crawl_entity
tag @e remove cr_crawl.crawl_stand

tellraw @s [{"text":"Crawling Datapack has successfully wiped all traces of itself from this world! You may now "},{"text":"disable the datapack","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"/datapack disable "}]},"clickEvent":{"action":"suggest_command","value":"/datapack disable "}},{"text":"."}]
tellraw @s ""
tellraw @s [{"text":"If you wish to restore the datapack, type "},{"text":"/reload","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"/reload"}]},"clickEvent":{"action":"run_command","value":"/reload"}},{"text":". This will also restore default settings."}]
tellraw @s ""
