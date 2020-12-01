if test -f $1.st
then
    { shelter.sh $1.st >$3; } 3>&1 | xargs redo-ifchange
fi
