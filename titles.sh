#!/bin/bash
export base="$(pwd)/"
export proc=$$
mkdir -p "$base/proc/$proc"
vsvs-extract $'echo "$value" | vsvs-parse \'test "$key" == "title" && echo "$value"\'' data
rm -r "$base/proc/$proc"
