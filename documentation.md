# Developer documentation

## Table of Contents

1. [pack.mcmeta](#mcmeta)
2. [Folder structure](#structure)
3. [Overlays](#overlays)
4. [zz_private](#private)
5. [Info pages](#pages)
6. [Predicates](#predicates)
7. [Tests](#tests)

## pack.mcmeta<a id="mcmeta"></a>

Should follow a format similar to:
```
{
  "pack": {
    "pack_format": 18,
    "description": "Crawl anytime, anywhere!\n1.20.2-a"
  }
}
```
*(I like 2 space indent.)*

## Folder structure<a id="structure"></a>
```
EasyCrawl/
├── data/
│   ├── ezcrawl/
│   │   ├── functions/
│   │   │   └── ...
│   │   ├── predicates/
│   │   │   └── ...
│   │   └── tags/entity_types/
│   │       └── ...
│   └── minecraft/tags/functions/
│       └── ...
├── pack.mcmeta
└── pack.png
```

## Overlays<a id="overlays"></a>

EasyCrawl datapack will not utilize overlays, but the resourcepack might benefit.

> TODO add overlays to the resourcepack

Overlays allow datapacks to support older versions. For example, `easycrawl-1.25.1` can work on Minecraft `1.20.2`.
```
EasyCrawl/
├── data/
│   ├── ezcrawl/
│   │   ├── functions/
│   │   │   └── ...
│   │   ├── predicates/
│   │   │   └── ...
│   │   └── tags/entity_types/
│   │       └── ...
│   └── minecraft/tags/functions/
│       └── ...
├── overlay_11_13/
│   └── data/
│	      ├── ezcrawl/
│	      │   └── ...
│	      └── minecraft/
│	          └── ...
│
└── overlay_14_17/
    └── data/
        ├── ezcrawl/
        │   └── ...
        └── minecraft/
            └── ...
```

But this isn't so useful since the user can just download `easycrawl-1.20.2`.

Also, overlays will bloat the datapack size:

e.g.
```
1.20.2 contains 1.20.2 datapack
1.20.3 contains 1.20.2 overlay  and 1.20.3 datapack
1.20.4 contains 1.20.2 overlay  and 1.20.3 overlay  and 1.20.4 datapack
1.20.5 contains 1.20.2 overlay  and 1.20.3 overlay  and 1.20.4 overlay and 1.20.5 datapack
...
```

But, if EasyCrawl decides to use overlays in the future:
```
{
  "pack": {
    "pack_format": 18,
    "description": "Crawl anytime, anywhere!\n1.20.2-a",
    "supported_formats": [11, 18]
  },
  "overlays": {
    "entries": [
      {
        "formats": [11, 13],
        "directory": "overlay_11_13"
      },
      {
        "formats": [14, 17],
        "directory": "overlay_14_17"
      }
    ]
  }
}
```

> ```
> [14, 17]
> ```
> is equivalent to
> ```
> {
>   "min_inclusive": 14,
>   "max_inclusive": 17
> }
> ```

> If overlay only applies to 1 pack format, do
> ```
> "formats": 26,
> ```
> or
> ```
> "formats": [26, 26],
> ```
> not
> ```
> "formats": [26],
> ```



## zz_private<a id="private"></a>

To ensure functions like `/function ezcrawl:settings` show up at the top of the function listing, place internal datapack files like `tick.mcfunction` into a folder called `zz_private`.
```
...
│   ├── ezcrawl/
│   │   ├── functions/
│   │   │   ├── zz_private/
│   │   │   │   └── tick.mcfunction
│   │   │   └── settings.mcfunction
...
```

## Info pages<a id="pages"></a>

Chat menus and info pages are important for user-friendly datapack management. EasyCrawl uses a rather complex system for displaying these "info pages" to the player, using **info page codes** in combination with **external** and **internal** functions.

### Motivations

The system initially arose as a way to avoid command feedback:
```
IT'S GONNA BE OKAY
Executed 1 command(s) from function 'foo:help'
```

> Doesn't `/gamerule sendCommandFeedback false` solve this issue? Yes, but I wanted a solution that doesn't rely on this. Respecting previously set gamerules is cumbersome.

EasyCrawl displays the info page on the following tick, pushing the feedback message away:

`help.mcfunction`
```
scoreboard players set @s info_page 3
```
`tick.mcfunction`
```
execute as @a[scores={info_page=3}] run function foo:internal/help
```
`internal/help.mcfunction`
```
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s "IT'S GONNA BE OK"

scoreboard players reset @s info_page
```

In the example above, we use an external function (`help`) meant to be called by the user and an internal function (`internal/help`) to actually display the info page.

This example set the score to `3`. What if we set the score to `301`? We can pass extra information to the internal function, for example:
- `3` = Display the help page (`1` for settings, `2` for credits, etc.)
- `0` = Do not play a sound effect (`1` for sound effect)
- `1` = Display a back arrow to the main menu (`0` for no back arrow)

### Codes

Here are the codes that EasyCrawl currently uses:

Code |Meaning
:----|:------------
1 _  |Info
2 _  |Settings
3 _  |Help
4 _  |Credits
5 _  |Main menu
_ 0  |Do not display a back arrow
_ 5  |Display back arrow to Main menu

e.g. `35` means display the Help page with a back arrow leading to the Main menu

### Handling the codes

`internal/menu.mcfunction`
```
tellraw @s "Menu:"
tellraw @s [{"text":"[Help]","clickEvent":{"action":"run_command","value":"/scoreboard players set @s info_page 35"}}]
```
`tick.mcfunction`
```
execute as @a[scores={info_page=30..39}] run function foo:internal/help
execute as @a[scores={info_page=50..59}] run function foo:internal/menu
```
Handle the code internally:

`internal/help.mcfunction`
```
# Extract the ones place digit (e.g. 37 -> 7)
scoreboard players operation @s info_page %= #10 info_page

execute if score @s info_page matches 5 run tellraw @s {"text":"< Back","clickEvent":{"action":"run_command","value":"/function foo:internal/menu"}}

tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s "IT'S GONNA BE OK"

scoreboard players reset @s info_page
```
> Should the conditional call `foo:menu` or `foo:internal/menu`?

> TODO: Change codes to adopt this system. I don't really want to touch the current system because why touch it if it's broken, but yea I should change it eventually.

## Predicates<a id="predicates"></a>

Predicates were added in Minecraft 1.15.
```
EasyCrawl/
├── data/
│   ├── ezcrawl/
│   │   ├── functions/
│   │   │   └── ...
│   │   ├── predicates/      🭮───
│   │   │   └── ...
│   │   └── tags/entity_types/
│   │       └── ...
│   └── minecraft/tags/functions/
│       └── ...
├── pack.mcmeta
└── pack.png
```
EasyCrawl currently uses four:

1. `can_crawl.json`
2. `can_start_crawling.json`
3. `has_passenger.json`
4. `has_vehicle.json`

`can_start_crawling.json`
- Player must satisfy score `ezcrawl.crawling` `<` `0`
- Player must satisfy nbt `OnGround:1b`
- Player must satisfy score `toggleCrawl` `=` `1`
- Player must satisfy gamemode non-spectator

`can_crawl.json`
- Player must satisfy nbt `OnGround:1b`
- Player must satisfy score `toggleCrawl` `=` `1`
- Player must satisfy gamemode non-spectator
- Player must satisfy flag `"is_swimming": false`

> Note: the `is_sneaking` predicate flag is not identical to the `minecraft.custom:minecraft.sneak_time` objective. The scoreboard objective will detect pressing SHIFT while swimming underwater -- the `is_sneaking` predicate flag won't.

`has_passenger.json` and `has_vehicle.json` are self-explanatory. One note though:
```
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "passenger": {}
  }
}
```
is probably more performant than
```
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "passenger": {
      "type": "minecraft:shulker"
    }
  }
}
```
```
{
  "values":[
    "minecraft:armor_stand",
    "minecraft:shulker"
  ]
}
```

## Tests<a id="tests"></a>

- Cannot start crawling while swimming
- Crawl and then enter a nether portal (should stop crawling and entities deleted. Also score in ezcrawl.crawling should be reset)


## Crawl Score

Non-crawling players have no score in `ezcrawl.crawling`

Crawling players have a score in `ezcrawl.crawling` that starts at 0 and increases every tick.

## Interpolation

If the player moves too quickly, they can outrun the shulker (who is constantly teleporting to the player).

> The game client interpolates entity positions across 1 second or so. This means that, although the game knows where the entity is, it doesn't show at that position in favor of a smoother looking motion. Some entities, however, are exempt to this interpolation, such as: area effect clouds, items, and most projectiles. We can make an entity ride one of the exempt entities to bypass most of the interpolation, leaving around 4 ticks of it, down from 20. However, an exempt entity does not update its position on its own. To account for this, we can force it to update its position by changing its `Air` NBT. For example: by toggling between `{Air: 1b}` and `{Air: 0b}`, or by storing gametime into it.

Vehicle                               |Can outrun the shulker with
:-------------------------------------|:------
`armor_stand`                         |No speed
`area_effect_cloud` (w/ air toggling) |Speed 8
`block_display` (w/ interpolation 0)  |Speed 8

> Note that `marker` entities cannot support passengers.

## area_effect_cloud

The AEC is the ideal vehicle entity:
- Reduces interpolation
- Compatible with pre-1.20.2

Special considerations:
- Must air toggle for full benefits
- Must not despawn due to duration
- Passenger rides 0.5 blocks higher than the AEC

> TODO there may be a discrepancy in AEC ride height between MC versions. in 1.20.2 it's .5 above the AEC origin, but the AEC-based branch says passengers riding area_effect_clouds are 0.375 blocks above the area_effect_cloud's center.

## Detecting crawling externally

> TODO this would be useful. Can detect if the player forced themselves to crawl using a trapdoor and continue to apply the crawling after they move into a tall space.

## Crawling down slabs/stairs

Causes the player to be `{OnGround:0b}` which violates `can_crawl.json`. Not sure how to fix this.

> TODO is it possible?

## Entity Linking

We wish to link 3 entities: the player, the shulker, and the shulker vehicle (area_effect_cloud). To do this, we use an ID system in combination with a counter that increments upon each spawn:
```
summon area_effect_cloud ~ ~ ~ {Tags:["noID"],Passengers:[{id:"shulker",Tags:["noID"]}]}

# Link the player, vehicle, and passenger
scoreboard players operation @s ID = #counter ID
scoreboard players operation @e[tag=noID] ID = #counter ID

# Increment the counter so that the next ID assignment is unique
scoreboard players add #counter ID 1

# Clean up
tag @e[tag=noID] remove noID
```
> TODO explain how to use it now that it's setup

## Entity tags

It's better to have it even though the performance boost is negligible.


## Fallback

To handle cases where the area_effect_cloud unlinks from the player (e.g. player disconnect), we have the area_effect_cloud maintain a score in `ezcrawl.active`. We keep this value alive in `move_to_player` by setting it to `1`. If this fails for any reason, we kill the area_effect_cloud and shulker. This is done in `tick`, so it's reliable but rather performance heavy:

> TODO optimize this?
```
scoreboard players set @e[tag=aec] active 0

execute as @a run function foo:process

execute as @e[tag=aec,scores={active=0}] run function foo:kill
execute as @e[tag=aec,predicate=!foo:has_passenger] run function foo:kill
execute as @e[tag=shulk,predicate=!foo:has_vehicle] run function foo:kill
```

EasyCrawl fallback also utilizes `ezcrawl:kill` instead of `ezcrawl:stop`. This doesn't clean up the player scores so it's a bit more raw, but I think it works.

> TODO this is a bug. if the player goes through a nether portal, their `ezcrawl.crawling` continues to increment. BAD. Consolidate `kill` and `stop` into 1 function? Tricky because contexts are lost. I re-added the mini-fallback that uses #ezcrawl.success, and that fixed it.

> TODO when the shulker is killed via /kill, `ezcrawl.crawling` continues to increment for a second while the shulker goes through the death animation. Even though the player is now standing. BUG.
