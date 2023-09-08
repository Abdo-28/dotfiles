if [[ "$1" == "up" ]] ; then ; amixer set "Master" 10%+ ; else ; amixer set "Master" 10%- ; fi
