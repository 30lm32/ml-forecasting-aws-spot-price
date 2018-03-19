INPUT=$1
MODEL=$2
PERFORMANCE=$1-vs-$2.per
OUTPUT=$1-vs-$2.out

RM_PATH=/home/erdi/rapidminer-studio/scripts/
$RM_PATH./rapidminer-batch.sh -Minput=$INPUT -Mmodel=$MODEL -Mperformance=$PERFORMANCE -Moutput=$OUTPUT -f ./sp_create_per.rmp
