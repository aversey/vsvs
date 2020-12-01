res=""
met=false
while read line
do
    value="$(echo -n "$line" | sed 's/ .*//')"
    if [ "${line:0:1}" == " " ]
    then
        if [ $met == true ]
        then
            res="${res}\n${value}"
        fi
    else
        if [ "$(echo -n "${line}" | sed 's/[^ ]* //')" == "$1" ]
        then
            met=true
            res="${value}"
        fi
    fi
done
echo -n "${res}"
