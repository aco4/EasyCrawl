execute if score #ezcrawl.gui.angle ezcrawl.crawling >= @s ezcrawl.settings.start_angle run particle dust{color:[0.000,1.000,0.000],scale:0.1} ^ ^ ^0.3 0 0 0 0 0 force @s
execute if score #ezcrawl.gui.angle ezcrawl.crawling < @s ezcrawl.settings.start_angle if score #ezcrawl.gui.angle ezcrawl.crawling > @s ezcrawl.settings.stop_angle run particle dust{color:[0.500,0.500,0.500],scale:0.08} ^ ^ ^0.3 0 0 0 0 0 force @s
execute if score #ezcrawl.gui.angle ezcrawl.crawling < @s ezcrawl.settings.stop_angle run particle dust{color:[1.000,0.000,0.000],scale:0.1} ^ ^ ^0.3 0 0 0 0 0 force @s

scoreboard players remove #ezcrawl.gui.angle ezcrawl.crawling 1
execute if score #ezcrawl.gui.angle ezcrawl.crawling matches -90.. rotated ~ ~-1 run function ezcrawl:zz_private/settings/gui/loop
