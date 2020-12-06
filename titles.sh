#!/bin/bash
export base="$(pwd)/"
export proc=$$
vsvs-extract 'echo -n "$value" | vsvs-parse 'test "$key" == "title" && echo -n "$value" && exit 0'' data
rm -r "$base/proc/$proc"
