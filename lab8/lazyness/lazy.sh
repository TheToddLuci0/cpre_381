#!/bin/bash
if [ -z ${SS_CONF+x} ]; then 
	echo "Please run 'export SS_CONF='path/to/your/conf'"
	exit 1
fi
vim $SS_CONF
/usr/local/ss/simplesim-3.0/sim-cache -config $SS_CONF /usr/local/ss/Benchmarks/compress95.ss < /usr/local/ss/Benchmarks/compress95.in |& tee /tmp/381.log 
grep "il1.miss_rate" /tmp/381.log 
#!/bin/bash
echo ok
