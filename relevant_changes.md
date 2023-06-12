# Relevant Changes
This file logs all changes to Minecraft that affect EasyCrawl

## 1.20
- Datapack format: 15
- Resourcepack format: 15
- (Not relevant but worth noting) Renamed the alternative condition to any_of
- (Not relevant but worth noting) Added the all_of condition. It has a field terms and passes only if all the terms pass



## 1.19.4
- Datapack format: 12
- Resourcepack format: 13
- (Not relevant but worth noting) Effect duration can now be infinite. e.g. summon shulker ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1}]}
- Only mobs in the dismounts_underwater entity tag will now force the rider to dismount when underwater. This does not include area_effect_clouds. Allows us to remove the in_fluid requirement



## 1.19.3
- Datapack format: 10
- Resourcepack format: 12

## 1.19.2
- Datapack format: 10
- Resourcepack format: 9

## 1.19.1
- Datapack format: 10
- Resourcepack format: 9



## 1.19
- Datapack format: 10
- Resourcepack format: 9
- Predicate gamemode check changed:

#### 1.19:
```json
{
  "condition": "minecraft:inverted",
  "term": {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
      "type_specific": {
        "type": "player",
        "gamemode": "spectator"
      }
    }
  }
}
```

#### 1.18.2:
```json
{
  "condition": "minecraft:inverted",
  "term": {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
      "player": {
        "gamemode": "spectator"
      }
    }
  }
}
```


## 1.18.2
- Datapack format: 9
- Resourcepack format: 8

## 1.18.1
- Datapack format: 8
- Resourcepack format: 8



## 1.18
- Datapack format: 8
- Resourcepack format: 8
- Scoreboard objectives, score holders (fake players), and team names are no longer limited to 16 characters



## 1.17.1
- Datapack format: 7
- Resourcepack format: 7



## 1.17
- Datapack format: 7
- Resourcepack format: 7
- Data pack and resource pack formats can now be different
- Rendering now uses the OpenGL 3.2 core profile. All fixed function rendering has been replaced with shader based rendering. All shaders except blit can be replaced in resource packs. Added folders in resource packs shaders/core and shaders/include.
- Predicate check for a score can now be exact instead of a range.
- Added passenger field to predicates
- (Not relevant but worth noting) Marker entity added
- (Not relevant but worth noting) /item command added



## 1.15
- Predicates added