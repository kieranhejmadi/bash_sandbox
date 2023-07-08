#! /bin/bash

#first beast enters

beast=$(($RANDOM %2))

echo "The first beast has entered the graveyard. Prepare to fight for your life! Muhahahah"
read tarnished

if [[ $beast == $tarnished ]]; then
	echo "Beast killed by the your steel"
else
	echo "The beast has struck you down .. you perish amongst the gravestones"
fi

# Fighting the boss level - Margrit
Margrit=$(($RANDOM %10))
echo $Margrit
echo "Margit has risen from the dead. Prepare to fight"
read good_luck
echo $good_luck

if [[ $Margrit == $good_luck ]]; then
        echo "Beast killed by the your steel"
else
        echo "Margrit has struck you down!"
fi

exit 0
