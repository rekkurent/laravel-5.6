#!/bin/bash 

if (! test -e "/root/.ssh/id_ed25519")
then
	ssh-keygen -t ed25519 -q -N "" -f /root/.ssh/id_ed25519
fi

