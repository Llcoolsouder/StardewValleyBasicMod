#!/bin/bash

cat > ~/stardewvalley.targets <<- EOM
<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
    <PropertyGroup>
        <GamePath>
EOM

echo "            $1" >> ~/stardewvalley.targets

cat >> ~/stardewvalley.targets <<- EOM
        </GamePath>
    </PropertyGroup>
</Project>
EOM
