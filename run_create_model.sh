INPUT=$1
MODEL=`echo $1 | sed 's\csv\mod\g'`

RM_PATH=/home/erdi/rapidminer-studio/scripts/
$RM_PATH./rapidminer-batch.sh -Minput=$INPUT -Mmodel=$MODEL -f ./sp_create_model.rmp
