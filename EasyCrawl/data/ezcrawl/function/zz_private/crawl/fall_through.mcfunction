tag @s add ezcrawl.this_shulker

# If the entity is right on top of the shulker:
execute as @e[type=item,dx=0] at @s positioned ~ ~-1.99 ~ if entity @e[type=shulker,tag=ezcrawl.this_shulker,dx=0,limit=1] positioned ~ ~-0.01 ~ unless entity @e[type=shulker,tag=ezcrawl.this_shulker,dx=0,limit=1] at @s run tp @s ~ ~-1.25 ~

execute as @e[dx=0,tag=!ezcrawl.crawl_entity] at @s positioned ~ ~-1.99 ~ if entity @e[type=shulker,tag=ezcrawl.this_shulker,dx=0,limit=1] positioned ~ ~-0.01 ~ unless entity @e[type=shulker,tag=ezcrawl.this_shulker,dx=0,limit=1] at @s run tp @s ~ ~-0.01 ~


tag @s remove ezcrawl.this_shulker
