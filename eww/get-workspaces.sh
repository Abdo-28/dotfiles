
spaces1 (){
	c=$(hyprctl activeworkspace | cut -d" " -f3 | head -n 1)
	hyprctl workspaces -j | jq 'map({key: .id | tostring, value: .windows}) | from_entries' | awk '/[0-9]/' | cut -d'"' -f2 | sort -n | grep -e [$c-9]
}

spaces2 (){
	printf "["
	for i in $(spaces1)
		do 
			printf ",%s" $i
	done
	printf "]"
}

spaces2

socat -u UNIX-CONNECT:/tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
	spaces2
	printf "\n"
done
