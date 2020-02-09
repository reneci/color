#!/bin/bash
function color() {
	fn_ChangeColor "$1" "$2"
}
function ecolor() {
	# print the $1 in colors $2 and $3
	# reset color options after printing $1 
	color "$2" "$3"
	echo "$1"
	color "reset"
}
function fn_ChangeColor() {
	# Parse the argument 1 for the foreground color
	fg=-1
	bg=-1
	case "$1" in
		"")			;;
		"reset")		fg=0;;
		"default")		fg=39;;
		"black")		fg=30;;
		"dark red")		fg=31;;
		"dark green")		fg=32;;
		"dark yellow")		fg=33;;
		"dark blue")		fg=34;;
		"dark magenta")		fg=35;;
		"dark cyan")		fg=36;;
		"gray")			fg=37;;
		"dark gray")		fg=90;;
		"red")			fg=91;;
		"green")		fg=92;;
		"yellow")		fg=93;;
		"blue")			fg=94;;
		"magenta")		fg=95;;
		"cyan")			fg=96;;
		"white")		fg=97;;
		*)
			echo "$1 is not supported"	
			;;
			
	esac

	# Parse the argument 2 for the background color
	case "$2" in
		"")			;;
		"default")		bg=49;;
		"black")		bg=40;;
		"dark red")		bg=41;;
		"dark green")		bg=42;;
		"dark yellow")		bg=43;;
		"dark blue")		bg=44;;
		"dark magenta")		bg=45;;
		"dark cyan")		bg=46;;
		"gray")			bg=47;;
		"dark gray")		bg=100;;
		"red")			bg=101;;
		"green")		bg=102;;
		"yellow")		bg=103;;
		"blue")			bg=104;;
		"magenta")		bg=105;;
		"cyan")			bg=106;;
		"white")		bg=107;;
		*)
			echo "$2 is not supported"
			;;
			
	esac
	fn_ChangeColorHex $fg $bg
}

function fn_ChangeColorHex() {
	if [[ ( $1 -ge 30  &&  $1 -le 37 ) || ( $1 -ge 90  && $1 -le 97 ) || ( $1 -eq 0 )]]
	then
		printf "\e[$1m" 
	fi
	
	if [[ ( $2 -ge 40 && $2 -le 47 ) || ( $2 -ge 100 &&  $2 -le 107 ) ]]
	then
		printf "\e[$2m" 
	fi

}
