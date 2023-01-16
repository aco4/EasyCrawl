scoreboard players reset @s ezcrawl.crawling

execute as @e[type=#ezcrawl:crawl_entities,tag=ezcrawl.crawl_entity] if score @s ezcrawl.crawlID = @p ezcrawl.crawlID run function ezcrawl:zz_private/crawl/kill
