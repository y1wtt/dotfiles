#!/bin/bash
SIZE=128
IMAGE_WIDTH=640
IMAGE_HEIGHT=360

wLoop=$(( IMAGE_WIDTH / SIZE  - 1))
hLoop=$(( IMAGE_HEIGHT / SIZE  - 1))

if [ $(( IMAGE_WIDTH % SIZE )) -gt 0 ] ; then
	wLoop=$((wLoop + 1))
fi
if [ $(( IMAGE_HEIGHT % SIZE )) -gt 0 ] ; then
	hLoop=$((hLoop + 1))
fi
uuid=$(uuidgen)

wAsSize=$(((wLoop + 1) * SIZE))
hAsSize=$(((hLoop + 1) * SIZE))

`convert ${1} -thumbnail ${IMAGE_WIDTH}x${IMAGE_HEIGHT} -gravity north -background rgba\(255,0,0,0\) -extent ${wAsSize}x${hAsSize} _tmp_${uuid}.png`
loopNum=1
for hh in `seq 0 $hLoop`; do
	yPos=$((hh  * SIZE))
	for ww in `seq 0 $wLoop`; do
		xPos=$((ww  * SIZE))
		`convert _tmp_${uuid}.png -background rgba\(255,0,0,0\) -crop ${SIZE}x${SIZE}+${xPos}+${yPos} ${2}_${loopNum}.png`
		loopNum=$((loopNum + 1))
	done
done

rm "_tmp_${uuid}.png"
