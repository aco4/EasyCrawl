scoreboard players operation @s ezc.crawlID = #ezcrawl.newID ezc.crawlID

# Summon a shulker riding an area_effect_cloud
# This allows the shulker to remain riding when submerged underwater (as opposed to an armor_stand)
# Additionally, area_effect_cloud can bypass teleport interpolation, making the shulker snap to the player's position more quickly
summon area_effect_cloud ~ ~0.825 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["ezcrawl.crawl_entity","ezcrawl.vehicle","ezcrawl.noID"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,Health:1f,AttachFace:0b,Color:0b,Tags:["ezcrawl.crawl_entity","ezcrawl.shulker","ezcrawl.noID"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:1000000,ShowParticles:0b}]}]}

execute as @e[type=#ezcrawl:crawl_entities,tag=ezcrawl.noID,limit=2] run function ezcrawl:zz_private/crawl/start/get_id
scoreboard players add #ezcrawl.newID ezc.crawlID 1

scoreboard players set @s ezc.crawling 0
