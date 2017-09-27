#!/bin/bash
PS3="UNIBIT->"
## MAINMENU
mainmenu()
{
mainmenu=("Step_1" "Step_2" "Step_3" "View Readme" "Quit")
select opt in "${mainmenu[@]}"; do
	if [ "$opt" = "Quit" ]; then
	echo "Quitting" && sleep 1 && clear
	exit 0
elif [ "$opt" = "Step_1" ]; then
Step_1
	elif [ "$opt" = "Step_2" ]; then
Step_2
    elif [ "$opt" = "Step_3" ]; then
Step_3
  	elif [ "$opt" = "View Readme" ]; then
showreadme
	else
  echo ""
	echo "That's not a valid option! Hit Return to show main menu"
  echo ""
	fi
done
}

## Step_1 Menu 
Step_1()
{
		reconmenu=("Next_Step_After_1" "Go back")
	select reconopt in "${reconmenu[@]}"; do
## first step -- Deps
	if [ "$reconopt" = "Next_Step_After_1" ]; then
		deps


## Go back
	elif [ "$reconopt" = "Go back" ]; then
		mainmenu
## Default if no menu option selected is to return an error
	else
  		echo  "That's not a valid option! Hit Return to show menu"
	fi
	done
}

## Step_2 Menu 
Step_2()
{
		dosmenu=("Next_Step_After_2" "Go back")
	select dosopt in "${dosmenu[@]}"; do
## Next Step After 2 (Sub-Process)
 	if [ "$dosopt" = "Next_Step_After_2" ]; then
		synflood
## Go back
	elif [ "$dosopt" = "Go back" ]; then
		mainmenu
	else
## Default if no menu option selected is to return an error
  	echo  "That's not a valid option! Hit Return to show menu"
	fi
	done
}

## Step_3 Menu
Step_3()
{
        extractionmenu=("Step_3_Subprocess" "Go back")
    select extractopt in "${extractionmenu[@]}"; do
## Step_3_Subprocess
    if [ "$extractopt" = "Step_3_Subprocess" ]; then
        icmpextract
## Go back
    elif [ "$extractopt" = "Go back" ]; then
        mainmenu
## Default error
    else
        echo "That's not a valid option! Hit Return to show menu"
    fi
    done
}

##SHOWREADME --> Update this! =D Done. Update github now. Done. Commit #001-1 confirmed.
##Updates to the github readme.md file will be available automatically to the view readme option.
##it grabs readme.md from github. so now we just make changes to github.com/readme.md ;)
showreadme()
{
	curl -s https://raw.githubusercontent.com/infopirate/UniBit-Files/master/README.md | more
}

## create menu and show welcome message!
	clear && echo ""
	echo ""
	echo "Hello and welcome to the UNIBIT Platform!"
	echo ""
	echo ""
	echo "This software is released as/is and unlicensed. Use at your own discretion."
	echo "Please report all bugs, improvements and suggestions to /somewhere/real"
	echo "This software is only for responsible, authorised use. Attention: YOU are responsible for your own actions!"
	echo ""
	echo "Please review the readme before proceeding."
	echo ""
	echo "Please Select a Menu Option"
mainmenu



##deps()
##{
	##what happens
	## add these //
	##    echo "Downloading dependencies...";
	##    sudo apt-get --yes --force-yes install software-properties-common python-software-properties
	##    sudo apt-get update
	##    sudo apt-get --yes --force-yes install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
	##    sudo apt-get --yes --force-yes install g++-mingw-w64-i686 mingw-w64-i686-dev g++-mingw-w64-x86-64 mingw-w64-x86-64-dev curl
	##    sudo apt-get --yes --force-yes install libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev
	##    sudo apt-get --yes --force-yes install git
	##    sudo add-apt-repository ppa:bitcoin/bitcoin -y
	##    sudo apt-get update
	##    sudo apt-get --yes --force-yes install libdb4.8-dev libdb4.8++-dev
	##    echo "Dependencies installed successfully...";
##}

##i used on Ubuntu-14.04-x86_64 -->   wget https://www.multichain.com/download/multichain-latest.tar.gz
##^^
##tar -xvzf multichain-1.0-beta-2.tar.gz
##cd multichain-1.0-beta-2
##mv multichaind multichain-cli multichain-util /usr/local/bin

## multichain-pre-config
##    chmod -R 777 multichain
##    cd multichain
#place dependencies script here
#install multichain-unibit
#install ipfs deps
#install and configure/init ipfs

#configure rpc for multichain (load multichaind -daemon)
#load front-end ui for multichaind

##compile multichain manually
##echo "Compilation start";
##./autogen.sh
##./configure
##make
##echo "End of compilation";

##move multichain to /bin -- make accessible to all users; etc.
##echo "Start copying";
##sudo cp src/multichaind /usr/local/bin;
##sudo cp src/multichain-cli /usr/local/bin;
##sudo cp src/multichain-util /usr/local/bin;
##echo "End! Maybe you want to start with multichain-util create chain :)";
