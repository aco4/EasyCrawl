tp @s ~ ~1.2 ~
# Shulker dismounts in water
execute at @s unless predicate ezcrawl:in_fluid run scoreboard players set #ezcrawl.success ezcrawl.crawling 1

scoreboard players set @s ezcrawl.active 1
