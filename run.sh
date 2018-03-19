rm -f *.mod
rm -f *.per
rm -f *.out

cp ../csv_date/*.csv ./

#============================================
for c in 2015-03-[0-3][0-9].csv
do
	./run_create_model.sh $c
	#head -10 $c
	echo "==> "$c" <== [done]"
done

#============================================
for c in 2015-03-[0-3][0-9].csv
do
	for m in *.mod
	do
		./run_create_per.sh $c $m
	done
done

rm -f *.csv
