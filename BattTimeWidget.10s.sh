#!/bin/sh

# <bitbar.title>BattStatMenu</bitbar.title>
# <bitbar.version>v0.1</bitbar.version>
# <bitbar.author>Thibaulltt</bitbar.author>
# <bitbar.author.github>Thibaulltt</bitbar.author.github>
# <bitbar.desc>Wrapper for battstat, developped originally by http://www.github.com/imwally</bitbar.desc>
# <bitbar.image>http://www.imgur.com/</bitbar.image>
# <bitbar.dependencies>none</bitbar.dependencies>
# <bitbar.abouturl>http://github.com/Thibaulltt/BattTimeWidget</bitbar.abouturl>

# Get info for widget & dropdown menu
rem=`battstat {t}`
per=`battstat {p}`
# Get charging status from pmset(1)
pmset1=`pmset -g adapter | head -1 | tail -1`
pmset2=`pmset -g adapter | head -2 | tail -1`
pmset3=`pmset -g adapter | head -3 | tail -1`
pmset4=`pmset -g adapter | head -4 | tail -1`
pmset5=`pmset -g adapter | head -5 | tail -1`
FONT=('size=14')

# If the computer isn't charging :
if [[ ${pmset1:1:1} == "o" ]]
then
	# Show colors
	COLOR1='color=red'
	COLOR2='color=orange'
	COLOR3='color=green'
	BATT_STR="Remaining = $rem h"
else
	# Else the label color will be 
	# defaulted to white
	COLOR1=''
	COLOR2=''
	COLOR3=''
	BATT_STR="Fully charged in $rem h"
fi

if [[ ${rem:1:1} == "0"  ]]
then
	echo "◉ | $COLOR1"
	echo "---"
	echo "$BATT_STR | $FONT $COLOR1";
else 
	if [[ ${rem:1:1} == "1" ]]
	then
		echo "◉ | $COLOR2"
		echo "---"
		echo "$BATT_STR | $FONT $COLOR2";
	else
		echo "◉ | $COLOR3"
		echo "---"
		echo "$BATT_STR | $FONT $COLOR3";
	fi
fi
echo "Percentage = $per"
# --------------------------------
# Get charging/not charging status
# --------------------------------

if [[ ${pmset1:1:1} == "W" ]]
then
	echo "Charging"
	echo "-- $pmset1"
	echo "-- $pmset2"
	echo "-- $pmset3"
	echo "-- $pmset4"
	echo "-- $pmset5"
else
	echo "Not Charging"
	echo "-- [Information unavailable]"
fi
