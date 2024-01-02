scoreboard players reset @s ezcrawl.crawling

# In case the shulker survives somehow, we don't want it to re-link to the player. This shouldn't be possible but might as well be safe
scoreboard players reset @s ezcrawl.crawlID

execute as @e[type=#ezcrawl:crawl_entities,tag=ezcrawl.crawl_entity] if score @s ezcrawl.crawlID = @p ezcrawl.crawlID run function ezcrawl:zz_private/crawl/kill
