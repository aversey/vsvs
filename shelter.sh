#!/bin/sh

echo -n $1.st >&3
shelter <$1.st >$1
