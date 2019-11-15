#!/bin/bash

mkdir -p $1
touch "$1/StardewValley.exe"

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
