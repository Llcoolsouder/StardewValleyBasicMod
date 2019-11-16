#!/bin/bash

mkdir -p "$PWD/$1"
touch "$PWD/$1/StardewValley.exe"
ls -lha "$PWD/$1"

cat > ~/stardewvalley.targets <<- EOM
<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
    <PropertyGroup>
        <GamePath>
EOM

echo "            $PWD/$1" >> ~/stardewvalley.targets

cat >> ~/stardewvalley.targets <<- EOM
        </GamePath>
    </PropertyGroup>
</Project>
EOM

cat ~/stardewvalley.targets
