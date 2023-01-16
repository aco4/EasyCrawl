#tellraw @a[gamemode=creative] [{"text":"[EasyCrawl]","hoverEvent":{"action":"show_text","value":[{"text":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}},{"text":" Reloaded!"}]

scoreboard objectives add ezc.main dummy

scoreboard objectives add ezc.crawlID dummy
execute unless entity @a[scores={ezc.crawling=0..}] run scoreboard players set #ezcrawl.newID ezc.crawlID 0

scoreboard objectives add ezc.crawling dummy
scoreboard objectives add ezc.active dummy

scoreboard objectives add ezc.s.start dummy
scoreboard objectives add ezc.s.stop dummy
scoreboard objectives add ezc.s.move minecraft.custom:minecraft.walk_one_cm

scoreboard objectives add toggleCrawl trigger
scoreboard objectives add customizeAngles trigger
scoreboard objectives add setStartAngle trigger
scoreboard objectives add setStopAngle trigger

scoreboard objectives add ezc.info_page dummy
