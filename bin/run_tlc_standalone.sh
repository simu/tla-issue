if [ $1 = "" ]; then
	model="2c4s2o/MC.tla"
else
	model=$1
fi
(cd `dirname $model`; java -cp /local2/gerbesim/tools/tla2tools.jar tlc2.TLC `basename $model` -checkpoint 15 -coverage 10 -workers 20 -tool | tee master.out)
