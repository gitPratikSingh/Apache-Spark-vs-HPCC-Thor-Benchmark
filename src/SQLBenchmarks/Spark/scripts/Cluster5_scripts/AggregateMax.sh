#!/bin/bash

###cluster size 5

### AggregateMax.scala

## AggregateMax dstat_log_AggregateCountDistinct output_log_AggregateMax

## integer dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - integer_2gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - integer_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - integer_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - integer_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_2gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - integer_2gb finished"	#****



############-----------------------



## integer dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - integer_4gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - integer_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - integer_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - integer_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_4gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - integer_4gb finished"	#****



############-----------------------



## integer dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - integer_8gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - integer_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - integer_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - integer_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_8gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - integer_8gb finished"	#****



############-----------------------




## integer dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - integer_16gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - integer_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - integer_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - integer_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_16gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - integer_16gb finished"	#****



############-----------------------




## integer dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - integer_32gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - integer_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - integer_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - integer_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_32gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - integer_32gb finished"	#****



############-----------------------
############-----------------------





## string dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - string_2gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - string_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - string_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - string_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_2gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - string_2gb finished"	#****



############-----------------------


#

## string dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - string_4gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - string_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - string_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - string_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_4gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - string_4gb finished"	#****



############-----------------------


## string dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - string_8gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - string_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - string_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - string_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_8gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - string_8gb finished"	#****



############-----------------------




## string dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - string_16gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - string_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - string_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - string_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_16gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - string_16gb finished"	#****



############-----------------------




## string dataset

#2 gb	#****

echo -e "\n\n\n AggregateMax - string_32gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  AggregateMax - string_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateMax - string_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct	#****


	##printing on output log file
	echo -e "\n\n\n***** AggregateMax - string_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_AggregateCountDistinct &

	##running the spark submit command
	sudo spark-submit --class AggregateMax --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_32gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_AggregateMax  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateMax - string_32gb finished"	#****



############-----------------------