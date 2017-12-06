#!/bin/bash

###cluster size 3

### SortRandom.scala

## SortRandom dstat_log_SortRandom output_log_SortRandom

## integer dataset

#2 gb	#****

echo -e "\n\n\n SortRandom - integer_2gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - integer_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - integer_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - integer_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_2gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - integer_2gb finished"	#****



############-----------------------


## integer dataset

#4 gb	#****

echo -e "\n\n\n SortRandom - integer_4gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - integer_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - integer_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - integer_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_4gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - integer_4gb finished"	#****



############-----------------------



## integer dataset

#8 gb	#****

echo -e "\n\n\n SortRandom - integer_8gb starting"	#****

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - integer_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - integer_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - integer_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_8gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - integer_8gb finished"	#****



############-----------------------

## integer dataset

#16 gb	#****

echo -e "\n\n\n SortRandom - integer_16gb starting"	#****

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - integer_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - integer_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - integer_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_16gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - integer_16gb finished"	#****


############-----------------------

## integer dataset

#32 gb	#****

echo -e "\n\n\n SortRandom - integer_32gb starting"	#****

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - integer_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - integer_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - integer_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_32gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - integer_32gb finished"	#****



############-----------------------
############-----------------------


## string dataset

#2 gb	#****

echo -e "\n\n\n SortRandom - string_2gb starting"	#****

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - string_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - string_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - string_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_2gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - string_2gb finished"	#****



############-----------------------

## string dataset

#4 gb	#****

echo -e "\n\n\n SortRandom - string_4gb starting"	#****

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - string_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - string_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - string_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_4gb.csv 0   &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - string_4gb finished"	#****



############-----------------------


## string dataset

#8 gb	#****

echo -e "\n\n\n SortRandom - string_8gb starting"	#****

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - string_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - string_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - string_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_8gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - string_8gb finished"	#****



############-----------------------

## string dataset

#16 gb	#****

echo -e "\n\n\n SortRandom - string_16gb starting"	#****

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - string_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - string_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - string_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_16gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - string_16gb finished"	#****



############-----------------------


## string dataset

#32 gb	#****

echo -e "\n\n\n SortRandom - string_32gb starting"	#****

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  SortRandom - string_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** SortRandom - string_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom	#****


	##printing on output log file
	echo -e "\n\n\n***** SortRandom - string_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster3/dstat_log_SortRandom &

	##running the spark submit command
	sudo spark-submit --class SortRandom --deploy-mode cluster --master yarn --num-executors 3 --executor-cores 3 --executor-memory 4g ~/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_32gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster3/output_log_SortRandom  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n SortRandom - string_32gb finished"	#****



############-----------------------


