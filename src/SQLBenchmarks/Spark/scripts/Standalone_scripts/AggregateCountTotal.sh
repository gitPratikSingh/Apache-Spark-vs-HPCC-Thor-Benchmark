#!/bin/bash

### AggregateCountTotal.scala

## integer dataset

#2 gb	#****

echo -e "\n\n\n AggregateCountTotal - integer_2gb starting"

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - integer_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_2gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_2gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_2gb.csv 1 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateCountTotal - integer_2gb finished"	#****



############-----------------------


#4 gb	#****

echo -e "\n\n\n AggregateCountTotal - integer_4gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - integer_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_4gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_4gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_4gb.csv 1 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateCountTotal - integer_4gb finished"	#****


############-----------------------


#8 gb	#****

echo -e "\n\n\n AggregateCountTotal - integer_8gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - integer_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_8gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_8gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_8gb.csv 1 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateCountTotal - integer_8gb finished"	#****


############-----------------------


#16 gb	#****

echo -e "\n\n\n AggregateCountTotal - integer_16gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - integer_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_16gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_16gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_16gb.csv 1 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateCountTotal - integer_16gb finished"	#****



############-----------------------


#32 gb	#****

echo -e "\n\n\n AggregateCountTotal - integer_32gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - integer_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_32gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - integer_32gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_32gb.csv 1 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateCountTotal - integer_32gb finished"	#****





############-----------------------
############-----------------------


## string dataset


#2 gb	#****

echo -e "\n\n\n AggregateCountTotal - string_2gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - string_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - string_2gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - string_2gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_2gb.csv 0 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateCountTotal - string_2gb finished"	#****



############-----------------------


## string dataset


#4 gb	#****

echo -e "\n\n\n AggregateCountTotal - string_4gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - string_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - string_4gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - string_4gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_4gb.csv 0 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateCountTotal - string_4gb finished"	#****


############-----------------------


## string dataset


#8 gb	#****

echo -e "\n\n\n AggregateCountTotal - string_8gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - string_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - string_8gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - string_8gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_8gb.csv 0 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateCountTotal - string_8gb finished"	#****


############-----------------------


## string dataset


#16 gb	#****

echo -e "\n\n\n AggregateCountTotal - string_16gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - string_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - string_16gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - string_16gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_16gb.csv 0 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateCountTotal - string_16gb finished"	#****



############-----------------------


## string dataset


#32 gb	#****

echo -e "\n\n\n AggregateCountTotal - string_32gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateCountTotal - string_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateCountTotal - string_32gb.csv" >> ~/spark_testing/dstat_log_AggregateCountTotal	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateCountTotal - string_32gb.csv" >> ~/spark_testing/output_log_AggregateCountTotal	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateCountTotal &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateCountTotal --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_32gb.csv 0 &>> ~/spark_testing/output_log_AggregateCountTotal
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateCountTotal - string_32gb finished"	#****

