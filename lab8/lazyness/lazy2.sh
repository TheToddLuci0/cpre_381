#!/bin/bash
if [ -z ${SS_CONF2+x} ]; then 
	echo "Please run 'export SS_CONF='path/to/your/conf'"
	exit 1
fi
vim $SS_CONF2
/usr/local/ss/simplesim-3.0/sim-cache -config $SS_CONF2 /usr/local/ss/Benchmarks/compress95.ss < /usr/local/ss/Benchmarks/compress95.in |& tee /tmp/381_2.log 
grep "il1.miss_rate" /tmp/381_2.log 
#!/bin/bash
echo ok
