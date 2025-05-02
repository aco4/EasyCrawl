
# Relevant Changes
This file logs all changes to Minecraft that affect EasyCrawl

# 24w36a (4th snapshot for 1.21.2)
- Input predicate. Useful to detecting if the player is holding space

## 1.21.1
- No changes

## 1.21
- Datapack format: 48
- Resourcepack format: 34
- Renamed directories
        predicates -> predicate
        functions -> function
        tags/functions -> tags/function
        tags/entity_types -> tags/entity_type
- Added `@n` entity selector, selecting the nearest entity
- New `Movement` sub-predicate
- Added new entity flag predicate `is_on_ground`, obsoleting an NBT check:
```JSON
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{OnGround:1b}"
  }
}
```
```JSON
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_on_ground": true
    }
  }
}
```
- The player predicate gamemode field has been changed to accept a list of gamemodes
```JSON
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "type_specific": {
      "type": "minecraft:player",
      "gamemode": "spectator"
    }
  }
}
```
```JSON
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "type_specific": {
      "type": "minecraft:player",
      "gamemode": [
        "spectator"
      ]
    }
  }
}

```



## 1.20.6
- No changes



## 1.20.5
- Datapack format: 41
- Resourcepack format: 32
- Changed the `/particle` command syntax for particles with extra options:
```
dust 0.1 0.2 0.3 0.4
```
```
dust{color:[0.1,0.2,0.3],scale:0.4}
```
- Added the `generic.scale` attribute, which allows changing the size of any mob to anywhere between 0.0625 and 16 times their default size
- Added the `generic.step_height` attribute. Default is 0.6, and the valid range is from 0 to 10



## 1.20.4
- No changes



## 1.20.3
- Datapack format: 26
- Resourcepack format: 22
- (Not currently used) Added `/return run`
- (Not currently used) `/function` command no longer has a result unless it uses `/return`



## 1.20.2
- Datapack format: 18
- Resourcepack format: 18
- Renamed `ActiveEffects` to `active_effects`
- Renamed `Id` to `id`
- Renamed `Amplifier` to `amplifier`
- Renamed `Duration` to `duration`
- Renamed `ShowParticles` to `show_particles`
- Added overlays and supported_formats to `pack.mcmeta`
- Added macros
- Added newlines (`\`)



## 1.20.1
- Nothing



## 1.20
- Datapack format: 15
- Resourcepack format: 15
- (Not currently used) Renamed the `alternative` condition to `any_of`
- (Not currently used) Added the `all_of` condition. It has a field `terms` and passes only if all the terms pass
- (Not currently used) Added `/return`



## 1.19.4
- Datapack format: 12
- Resourcepack format: 13
- Effect duration can now be infinite. e.g. `summon shulker ~ ~ ~ {ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1}]}`
- Only mobs in the `dismounts_underwater` entity tag will now force the rider to dismount when underwater. This does not include `area_effect_clouds`. Allows removal of the `in_fluid` requirement



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
```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "player": {
      "gamemode": "spectator"
    }
  }
}
```
```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "type_specific": {
      "type": "player",
      "gamemode": "spectator"
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
- (Not currently used) Marker entity added
- (Not currently used) `/item` added



## 1.15
- Predicates added
