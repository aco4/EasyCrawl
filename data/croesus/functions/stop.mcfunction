tag @s remove cr_crawl.crawling

execute as @e[type=#croesus:crawl_entities,tag=cr_crawl.crawl_entity] if score @s cr_crawl.crawlID = @p cr_crawl.crawlID run function croesus:kill
