#!/bin/bash 

function invertMount {
	local source=$1
	local destination=$2
	if (! test -e "$destination")||[ $(find "$destination" -maxdepth 1 | wc -l) -eq 1 ]
	then
		cp -R "$source"/. "$destination"
	fi

	rm -rf $source && ln -sT $destination $source
}
