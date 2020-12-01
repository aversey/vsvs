deps=$(shelter.sh $2 3>&1)
redo-ifchange ${deps}
