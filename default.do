#!/bin/sh
export title="$(vsvs-get title < $1.vs)"
export content="$(vsvs-get content < $1.vs)"
echo -n "$(vsvs-get template < articles.vs)" | shelter >$3;
redo-ifchange $1.vs articles.vs
