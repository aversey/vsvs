if [[ $2 =~ \.st$ ]]
then
else
    deps=$( { shelter.sh $2.st >$2; } 3>&1)
    redo-ifchange ${deps}
fi
