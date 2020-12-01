deps=$( { shelter.sh $2.st >$2; } 3>&1)
redo-ifchange ${deps}
