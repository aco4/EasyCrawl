# EasyCrawl Semantic Versioning
This document describes EasyCrawl's versioning system. It makes three adaptations upon the official [Semantic Versioning Specification](https://semver.org/):

Add Minecraft version
: To identify the Minecraft version the datapack was made for

Add `v` to version number
: To help distinguish the Minecraft version from the datapack version.

Introduce `bpt` keyword
: To indicate backwards-support versions

## General Format
`MCVERSION-vMAJOR.MINOR.PATCH`

- `MCVERSION` = The Minecraft version the datapack was made for
- `MAJOR` = Changes that are incompatible with previous versions (e.g. renamed scoreboards)
- `MINOR` = Functional changes (e.g. feature additions)
- `PATCH` = Pack increases, bugfixes, performance optimizations, etc.

`MCVERSION-bpt-vMAJOR.MINOR.PATCH`

- `bpt` = Keyword indicates the datapack is a backwards-support version.

### Examples
`1.19.4-v3.1.3`
`1.19.3-v3.1.2`
`1.18.2-bpt-v2.1.2`
`1.17.1-bpt-v3.3.0`

### Diagram
```
                            🡡
                      1.20.1-v3.2.0             🡡
                            │           1.19.4-bpt-v3.1.0
                      1.19.4-v3.0.3 ────────────┘
        🡡                   │
1.18.2-bpt-v3.4.1           │                   🡡
1.18.2-bpt-v2.2.1           │           1.17.1-bpt-v2.3.1
        └──────────── 1.18.2-v2.2.0     1.17.1-bpt-v2.0.0
                            │           1.17.1-bpt-v1.4.2
                      1.17.1-v1.3.2 ────────────┘
                            │
```

## Explanation
EasyCrawl aims to provide support for previous Minecraft versions (e.g. `1.17`, `1.18`, `1.19`). However, it's not always possible for older Minecraft versions to retain the same functionality as newer ones, and this causes problems.

### Example
Let's say:
- The latest version of EasyCrawl is `1.16.5-v1.5.0`.
- `1.17` is released. This update adds shaders, now making it possible to fully hide shulkers.
- EasyCrawl implements the change and updates to `1.17-v2.0.0`.

Now there's a problem. If backwards support is provided for `1.16.5-v1.5.0` and this increases the version to `1.16.5-v2.0.0`, there would be a conflict with `1.17-v2.0.0`.

### Solution
Have backwards-support versions branch onto their own update path. To indicate this, `bpt` is added to the version name:

`MCVER-bpt-vMAJOR.MINOR.PATCH`

So,
`1.16.5-v1.5.0`
will become
`1.16.5-bpt-v2.0.0`
after we update it.
