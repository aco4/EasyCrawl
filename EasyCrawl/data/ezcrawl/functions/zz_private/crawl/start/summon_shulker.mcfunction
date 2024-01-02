# Summon
summon area_effect_cloud ~ ~0.7 ~ {NoGravity:1b,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["ezcrawl.crawl_entity","ezcrawl.area_effect_cloud","ezcrawl.noID"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"empty",NoAI:1b,AbsorptionAmount:1024f,Health:1024f,AttachFace:0b,Color:0b,Tags:["ezcrawl.crawl_entity","ezcrawl.shulker","ezcrawl.noID"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:1024},{Name:generic.armor,Base:30},{Name:generic.max_absorption,Base:1024}]}]}

# Link the player, vehicle, and shulker
scoreboard players operation @s ezcrawl.crawlID = #ezcrawl.newID ezcrawl.crawlID
scoreboard players operation @e[type=#ezcrawl:crawl_entities,tag=ezcrawl.noID,limit=2] ezcrawl.crawlID = #ezcrawl.newID ezcrawl.crawlID

# Increment the counter so that the next ID assignment is unique
scoreboard players add #ezcrawl.newID ezcrawl.crawlID 1

# Clean up
tag @e[type=#ezcrawl:crawl_entities,tag=ezcrawl.noID,limit=2] remove ezcrawl.noID

# Indicate the player has begun crawling
scoreboard players set @s ezcrawl.crawling 0
