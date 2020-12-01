if test -f $2.st
then
    deps=$( { shelter.sh $2.st >$2; } 3>&1)
    redo-ifchange ${deps}
fi
