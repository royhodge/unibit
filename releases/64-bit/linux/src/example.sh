#!/bin/bash
# menu.sh - A sample shell script to display menus on screen
# Store menu options selected by the user
INPUT=/tmp/menu.sh.$$

# Storage file for displaying cal and date command output
OUTPUT=/tmp/output.sh.$$

# trap and delete temp files
trap "rm $OUTPUT; rm $INPUT; exit" SIGHUP SIGINT SIGTERM

#
# Purpose - display output using msgbox
#  $1 -> set msgbox height
#  $2 -> set msgbox width
#  $3 -> set msgbox title
#
function display_output(){
	local h=${1-10}			# box height default 10
	local w=${2-41} 		# box width default 41
	local t=${3-Output} 	# box title
	dialog --backtitle "UniBit v0.0.4" --title "${t}" --clear --msgbox "$(<$OUTPUT)" ${h} ${w}
}
#
# Purpose - install unibit on system
#
function show_install(){
	echo "Today is $(date) @ $(hostname -f)." >$OUTPUT
    display_output 6 60 "Date and Time"
}
#
# Purpose - testing sub-menu
#
function show_testing(){
	cal >$OUTPUT
	display_output 13 25 "Calendar"
}
#
# Purpose - stable sub-menu
#
function show_stable(){
	cal >$OUTPUT
	display_output 13 25 "Calendar"
}
#
# Purpose - show readme
#
function show_rm()
{
   dialog --backtitle "UniBit v0.0.4" --title "README" \
   --msgbox "`curl -s https://raw.githubusercontent.com/infopirate/UniBit-Files/master/README.md`" 15 60
}
#
# set infinite loop
#
while true
do

### display main menu ###
dialog --clear  --help-button --backtitle "UniBit v0.0.4" \
--title "[ Universal Bit Project ]" \
--menu "" 15 50 5 \
Install "Install UniBit" \
Stable "Stable Menu" \
Testing "Testing Menu" \
Readme "View Readme" \
Exit "Exit the application" 2>"${INPUT}"

menuitem=$(<"${INPUT}")


# make decsion
case $menuitem in
	Install) show_install;;
	Stable) show_stable;;
	Testing) show_testing;;
	Readme) show_rm;;
	Exit) clear; echo "GoodBye"; break;;
esac

done

# if temp files found, delete em
[ -f $OUTPUT ] && rm $OUTPUT
[ -f $INPUT ] && rm $INPUT
