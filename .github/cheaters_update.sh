#!/bin/bash 

time=$(date "+%Y-%m-%d %H:%M:%S")
echo $time

cheaters_ID=(id/DagZede/ profiles/76561198854660782 profiles/76561199378969003 id/Sleadr profiles/76561199501593849 profiles/76561198818703363 profiles/76561198281111612 profiles/76561199438934867 profiles/76561199489780880 profiles/76561198223744704 profiles/76561199433034628 profiles/76561199390199106 profiles/76561199310017870 profiles/76561198077024574 profiles/76561199412285976 profiles/76561198043433411 profiles/76561198030697690 profiles/76561198980204295 profiles/76561198083979694 profiles/76561198081430238 profiles/76561199048027117 profiles/76561198107896591 profiles/76561198938976695 profiles/76561198839646162 profiles/76561198073103373 profiles/76561198209173436 profiles/76561198973679329 profiles/76561198026289985 profiles/76561199070000800 profiles/76561199086244180 profiles/76561198084874424 profiles/76561198108197134 profiles/76561198407886594 profiles/76561198101337488 profiles/76561198851216499 profiles/76561199066388594 profiles/76561198078057512 profiles/76561198076137075 profiles/76561199032447430 profiles/76561199028490431 profiles/76561198445457868 profiles/76561198368034387 profiles/76561199116012716 profiles/76561198176636826 profiles/76561199201981441 profiles/76561198080498773 profiles/76561199214277508 profiles/76561199247196637 profiles/76561198143645427 profiles/76561198080498773 profiles/76561198161141089 profiles/76561198035733380)
cheaters_Name=()

i=0
for cheater in ${cheaters_ID[*]}
do
	Name=`curl -L https://steamcommunity.com/$cheater |grep 'class="actual_persona_name"' |head -1 |awk -F'>|<' '{print $3}'`
	cheaters_Name[$i]=${Name/|/&#124;}
	let 'i++'
done
echo ${cheaters_Name[*]}

echo '# AceCombat7 cheaters

See `report.md` to know how to report new cheaters.

| name | steam URL |
| ------ | ------ |' > README.md

j=0
while (($j<i))
do
	echo '| '${cheaters_Name[$j]}' | https://steamcommunity.com/'${cheaters_ID[$j]}' |' >> README.md
	let 'j++'
done

