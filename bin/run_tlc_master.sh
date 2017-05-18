if [ $1 = "" ]; then
	model="2c4s2o/MC.tla"
else
	model=$1
fi
java -cp tla2tools.jar -Djava.rmi.server.hostname=127.0.0.1 tlc2.tool.distributed.TLCServer $model -checkpoint 15 -coverage 10 -tool | tee master.out
