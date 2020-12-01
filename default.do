#!/bin/sh
export title="$(vsvs.sh title < $1.vs)"
export content="$(vsvs.sh content < $1.vs)"
echo -n "$(vsvs.sh template < articles.vs)" | shelter >$3;
redo-ifchange $1.vs articles.vs
