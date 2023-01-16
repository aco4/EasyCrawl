scoreboard players reset @s ezc.crawling

execute as @e[type=#ezcrawl:crawl_entities,tag=ezcrawl.crawl_entity] if score @s ezc.crawlID = @p ezc.crawlID run function ezcrawl:zz_private/crawl/kill
