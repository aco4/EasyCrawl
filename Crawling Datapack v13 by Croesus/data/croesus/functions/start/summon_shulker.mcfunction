scoreboard players operation @s cr_crawl.crawlID = #cr_crawl.newID cr_crawl.crawlID

summon armor_stand ~ ~1.19375 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["cr_crawl.crawl_entity","cr_crawl.crawl_stand","cr_crawl.noID"],Passengers:[{id:"shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Health:1f,AttachFace:0b,Color:0b,Tags:["cr_crawl.crawl_entity","cr_crawl.noID"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}]}

execute as @e[type=#croesus:crawl_entities,tag=cr_crawl.noID] run function croesus:get_id
scoreboard players add #cr_crawl.newID cr_crawl.crawlID 1
tag @s add cr_crawl.crawling
