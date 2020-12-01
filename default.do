if [[ $$2 =~ \.st$ ]]
then
    exit 0
fi
deps=$( { shelter.sh $2.st >$2; } 3>&1)
redo-ifchange ${deps}
