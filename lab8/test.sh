#!/bin/bash
if [ -z ${SS_CONF_fakEr+x} ]; then 
	echo "Please run 'export SS_CONF='path/to/your/conf'"
	exit 1
fi
echo ok
