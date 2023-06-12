scoreboard players operation @s ezcrawl.crawlID = #ezcrawl.newID ezcrawl.crawlID

summon armor_stand ~ ~1.19375 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["ezcrawl.crawl_entity","ezcrawl.armor_stand","ezcrawl.noID"],Passengers:[{id:"shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Health:1f,AttachFace:0b,Color:0b,Tags:["ezcrawl.crawl_entity","ezcrawl.shulker","ezcrawl.noID"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}]}

#execute rotated ~ 0 positioned ^ ^ ^0.1 run summon armor_stand ~ ~1.19375 ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["ezcrawl.crawl_entity","ezcrawl.armor_stand","ezcrawl.noID"],Passengers:[{id:"shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Health:1f,AttachFace:0b,Color:0b,Tags:["ezcrawl.crawl_entity","ezcrawl.shulker","ezcrawl.noID"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}]}

execute as @e[type=#ezcrawl:crawl_entities,tag=ezcrawl.noID] run function ezcrawl:zz_private/crawl/start/get_id
scoreboard players add #ezcrawl.newID ezcrawl.crawlID 1

scoreboard players set @s ezcrawl.crawling 0
