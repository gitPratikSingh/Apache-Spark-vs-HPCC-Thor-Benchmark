#!/bin/bash

###cluster size 3

### AggregateCountDistinct.scala

## integer dataset

#2 gb	#****

echo -e "\n\n\n AggregateCountDistinct - integer_2gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountDistinct - integer_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountDistinct - integer_2gb.csv" >> ~/spark_testing/log_files/dstat_log_AggregateCountDistinct	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountDistinct - integer_2gb.csv" >> ~/spark_testing/log_files/output_log_AggregateCountDistinct	#****

	##running the dstat command 
	dstat -cdlmtTy &>> ~/spark_testing/log_files/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateCountDistinct --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/spark_testing/spark_benchmark/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_2gb.csv 1    #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateCountDistinct - integer_16gb finished"	#****



############-----------------------
