function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezcrawl.info_page matches 100.. run tellraw @s {"bold":true,"click_event":{"action":"run_command","command":"/function ezcrawl:menu"},"hover_event":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}],"value":[{"text":""}]},"text":"< Back"}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Info","bold":true,"underlined":true}
tellraw @s ""
tellraw @s "This is a datapack that allows you to crawl anytime, anywhere!"
tellraw @s ""
tellraw @s [{"text":"The version you are using is made for Minecraft version "},{"text":"1.21.5","bold":true},{"text":"."}]
tellraw @s ""
tellraw @s ["This datapack is developed by Croesus. Visit the official page ",{"click_event":{"action":"open_url","url":"https://www.planetminecraft.com/data-pack/crawling-datapack/"},"color":"blue","hover_event":{"action":"show_text","contents":[{"text":"https://www.planetminecraft.com/data-pack/crawling-datapack/"}],"value":[{"text":""}]},"text":"here","underlined":true},"."]
tellraw @s ""



scoreboard players reset @s ezcrawl.info_page
