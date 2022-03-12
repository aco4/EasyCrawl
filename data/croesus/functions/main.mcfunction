#Enable all players to trigger crawl setting objectives
execute as @a run function croesus:settings

#Crawl-start sequence
execute as @a[predicate=croesus:is_sneaking,gamemode=!spectator,tag=!cr_crawl.crawling,scores={toggleCrawl=2}] at @s unless block ~ ~ ~ #croesus:cannot_crawl_in run function croesus:start/on_ground_check

#Main crawl sequence
execute as @a[tag=cr_crawl.crawling] at @s run function croesus:crawl
