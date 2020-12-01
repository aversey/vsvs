#!/bin/sh
res=""
met=false
while IFS="" read str
do
    if [ -z "${str##* *}" ]
    then
        key="${str%% *}"
        val="${str#* }"
    else
        key="${str}"
        val=""
    fi
    if [ -z "${key}" ] && [ $met == true ]
    then
        res="${res}"$'\n'"${val}"
    elif [ "${key}" == "$1" ]
    then
        met=true
        res="${val}"
    else
        met=false
    fi
done
echo -n "${res}"
