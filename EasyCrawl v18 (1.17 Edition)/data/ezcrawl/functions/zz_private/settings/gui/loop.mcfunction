execute if score #ezcrawl.gui.angle ezc.crawling >= @s ezc.s.start run particle dust 0.000 1.000 0.000 0.1 ^ ^ ^0.5 0 0 0 0 0 force @s
execute if score #ezcrawl.gui.angle ezc.crawling < @s ezc.s.start if score #ezcrawl.gui.angle ezc.crawling > @s ezc.s.stop run particle dust 0.500 0.500 0.500 0.08 ^ ^ ^0.5 0 0 0 0 0 force @s
execute if score #ezcrawl.gui.angle ezc.crawling < @s ezc.s.stop run particle dust 1.000 0.000 0.000 0.1 ^ ^ ^0.5 0 0 0 0 0 force @s

scoreboard players remove #ezcrawl.gui.angle ezc.crawling 1
execute if score #ezcrawl.gui.angle ezc.crawling matches -90.. rotated ~ ~-1 run function ezcrawl:zz_private/settings/gui/loop
