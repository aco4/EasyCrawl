#tellraw @a[gamemode=creative] [{"text":"[EasyCrawl]","hoverEvent":{"action":"show_text","value":[{"text":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}},{"text":" Reloaded!"}]

scoreboard objectives add ezcrawl.crawlID dummy
execute unless entity @a[scores={ezcrawl.crawling=0..}] run scoreboard players set #ezcrawl.newID ezcrawl.crawlID 0

scoreboard objectives add ezcrawl.crawling dummy
scoreboard objectives add ezcrawl.active dummy

scoreboard objectives add ezcrawl.settings.start_angle dummy
scoreboard objectives add ezcrawl.settings.stop_angle dummy
scoreboard objectives add ezcrawl.settings.movement minecraft.custom:minecraft.walk_one_cm

scoreboard objectives add toggleCrawl trigger
scoreboard objectives add customizeCrawlAngles trigger
scoreboard objectives add setCrawlStartAngle trigger
scoreboard objectives add setCrawlStopAngle trigger

scoreboard objectives add ezcrawl.info_page dummy
