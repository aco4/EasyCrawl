function ezcrawl:zz_private/info_page/clear

# If displaying info page from the menu, display back button
execute if score @s ezcrawl.info_page matches 100.. run tellraw @s {"text":"< Back","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/function ezcrawl:menu"}]},"clickEvent":{"action":"run_command","value":"/function ezcrawl:menu"}}



tellraw @s ""
tellraw @s {"text":"EasyCrawl Credits","bold":true,"underlined":true}
tellraw @s ""
tellraw @s "Thank you u/Ersatz_77 (Reddit) for describing how to make shulker heads invisible. Without you, I would have had to wait for Mojang to fix their bug (impossible)."
tellraw @s ""
tellraw @s "Huge thanks to Misode (GitHub) and mcstacker.net for providing their amazing generators. Your services power the datapack community."
tellraw @s ""
tellraw @s "Thanks to Cloud Wolf (YouTube) for teaching how to link entities, as well as numerous other datapacking techniques."
tellraw @s ""
tellraw @s "Finally, thanks to the Minecraft Commands community (Discord), the Arqade community (Stack Exchange), and the Minecraft Wiki (Fandom.com) for providing invaluable help and information whenever I needed it."
tellraw @s ""



scoreboard players reset @s ezcrawl.info_page
