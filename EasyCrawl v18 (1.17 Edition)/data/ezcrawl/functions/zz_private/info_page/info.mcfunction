function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezc.info_page matches 100.. run tellraw @s {"text":"< Back","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:menu"}}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Info","bold":true,"underlined":true}
tellraw @s ""
tellraw @s "This is a datapack that allows you to crawl anytime, anywhere!"
tellraw @s ""
tellraw @s [{"text":"You are currently running version "},{"text":"v18","bold":true},{"text":" of this datapack."}]
tellraw @s ""
tellraw @s [{"text":"This datapack is developed by Croesus. Visit the official page "},{"text":"here","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}},{"text":"."}]
tellraw @s ""



scoreboard players reset @s ezc.info_page
