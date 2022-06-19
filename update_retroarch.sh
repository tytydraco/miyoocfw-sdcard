#!/usr/bin/env bash
RA_URL="https://buildbot.libretro.com/nightly/dingux/miyoo-arm32/RetroArch.7z"
rm -rf ra_working
mkdir ra_working
cd ra_working
wget "$RA_URL"
7za x RetroArch.7z
cd ..

rm -rf main/.retroarch
cp -ra ra_working/retroarch/.retroarch main/

rm -f main/retroarch
cp -ra ra_working/retroarch/emus/retroarch/retroarch main/

rm -rf ra_working
