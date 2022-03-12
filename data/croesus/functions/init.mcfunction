#tellraw @a[gamemode=creative] [{"text":"[Crawling Datapack]","hoverEvent":{"action":"show_text","value":[{"text":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}},{"text":" Reloaded!"}]

scoreboard objectives add cr_crawl.crawlID dummy
execute unless entity @a[tag=cr_crawl.crawling] run scoreboard players set #cr_crawl.newID cr_crawl.crawlID 0

scoreboard objectives add cr_crawl.data dummy

scoreboard objectives add toggleCrawl trigger
scoreboard objectives add min_start_angle trigger
scoreboard objectives add max_start_angle trigger
scoreboard objectives add min_stop_angle trigger
scoreboard objectives add max_stop_angle trigger
