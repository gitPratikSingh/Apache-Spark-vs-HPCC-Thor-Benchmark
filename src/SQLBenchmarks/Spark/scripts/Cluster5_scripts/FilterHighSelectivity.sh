#!/bin/bash

###cluster size 5

### FilterHighSelectivity.scala

## FilterHighSelectivity dstat_log_FilterHighSelectivity output_log_FilterHighSelectivity

## integer dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - integer_2gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - integer_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_2gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - integer_2gb finished"	#****



############-----------------------



## integer dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - integer_4gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - integer_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_4gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - integer_4gb finished"	#****



############-----------------------



## integer dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - integer_8gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - integer_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_8gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - integer_8gb finished"	#****



############-----------------------




## integer dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - integer_16gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - integer_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_16gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - integer_16gb finished"	#****



############-----------------------




## integer dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - integer_32gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - integer_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - integer_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/integer/integer_32gb.csv 1  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - integer_32gb finished"	#****



############-----------------------
############-----------------------





## string dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - string_2gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - string_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_2gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_2gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - string_2gb finished"	#****



############-----------------------


#

## string dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - string_4gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - string_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_4gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_4gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - string_4gb finished"	#****



############-----------------------


## string dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - string_8gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - string_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_8gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_8gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - string_8gb finished"	#****



############-----------------------




## string dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - string_16gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - string_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_16gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_16gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - string_16gb finished"	#****



############-----------------------




## string dataset

#2 gb	#****

echo -e "\n\n\n FilterHighSelectivity - string_32gb starting"

for i in {1..1}
do
	##printing on screen
	echo  "run " $i " of  FilterHighSelectivity - string_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity	#****


	##printing on output log file
	echo -e "\n\n\n***** FilterHighSelectivity - string_32gb.csv" >> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ec2-user/RamBharose/experiment_logs/dstat_logs/Cluster5/dstat_log_FilterHighSelectivity &

	##running the spark submit command
	sudo spark-submit --class FilterHighSelectivity --deploy-mode cluster --master yarn --num-executors 5 --executor-cores 5 --executor-memory 4g /home/ec2-user/RamBharose/exp_jars/SparkBenchmark_cluster.jar hdfs:///user/hadoop/datasets/string/string_32gb.csv 0  &>> /home/ec2-user/RamBharose/experiment_logs/output_logs/Cluster5/output_log_FilterHighSelectivity  #****
	
	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n FilterHighSelectivity - string_32gb finished"	#****



############-----------------------