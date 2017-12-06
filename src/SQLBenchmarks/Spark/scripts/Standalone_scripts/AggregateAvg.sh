#!/bin/bash

### AggregateAvg.scala 


## integer dataset

: <<'END'


#2 gb	#****

echo -e "\n\n\n AggregateAvg - integer_2gb starting"

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - integer_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - integer_2gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - integer_2gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_2gb.csv 1 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateAvg - integer_2gb finished"	#****



############-----------------------


#4 gb	#****

echo -e "\n\n\n AggregateAvg - integer_4gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - integer_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - integer_4gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - integer_4gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_4gb.csv 1 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateAvg - integer_4gb finished"	#****


############-----------------------


#8 gb	#****

echo -e "\n\n\n AggregateAvg - integer_8gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - integer_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - integer_8gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - integer_8gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_8gb.csv 1 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateAvg - integer_8gb finished"	#****


############-----------------------


#16 gb	#****

echo -e "\n\n\n AggregateAvg - integer_16gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - integer_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - integer_16gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - integer_16gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_16gb.csv 1 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo  -e "\n\n\n AggregateAvg - integer_16gb finished"	#****

END

############-----------------------


#32 gb	#****

echo -e "\n\n\n AggregateAvg - integer_32gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - integer_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - integer_32gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - integer_32gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/integer_dataset/integer_32gb.csv 1 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateAvg - integer_32gb finished"	#****




############-----------------------
############-----------------------


## string dataset


#2 gb	#****

echo -e "\n\n\n AggregateAvg - string_2gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - string_2gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - string_2gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - string_2gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_2gb.csv 0 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateAvg - string_2gb finished"	#****



############-----------------------


## string dataset


#4 gb	#****

echo -e "\n\n\n AggregateAvg - string_4gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - string_4gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - string_4gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - string_4gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_4gb.csv 0 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateAvg - string_4gb finished"	#****


############-----------------------


## string dataset


#8 gb	#****

echo -e "\n\n\n AggregateAvg - string_8gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - string_8gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - string_8gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - string_8gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_8gb.csv 0 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateAvg - string_8gb finished"	#****


############-----------------------


## string dataset


#16 gb	#****

echo -e "\n\n\n AggregateAvg - string_16gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - string_16gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - string_16gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - string_16gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_16gb.csv 0 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateAvg - string_16gb finished"	#****



############-----------------------


## string dataset


#32 gb	#****

echo -e "\n\n\n AggregateAvg - string_32gb starting"	#****

for i in {1..3}
do
	##printing on screen
	echo  "run " $i " of  AggregateAvg - string_32gb.csv"	#****

	##printing on dstat log file
	echo -e "\n\n\n***** AggregateAvg - string_32gb.csv" >> ~/spark_testing/dstat_log_AggregateAvg	#****

	##printing on output log file
	echo -e "\n\n\n***** AggregateAvg - string_32gb.csv" >> ~/spark_testing/output_log_AggregateAvg	#****

	##running the dstat command 
	dstat -cdlmtTy &>> /home/ubuntu/spark_testing/dstat_log_AggregateAvg &

	##running the spark submit command
	/home/ubuntu/spark-2.2.0-bin-hadoop2.7/bin/spark-submit --class AggregateAvg --master local[*] ~/spark_testing/SparkBenchmark.jar ~/data/string_dataset/string_32gb.csv 0 &>> ~/spark_testing/output_log_AggregateAvg
	#****

	##killing the dstat command
	pkill dstat

	##printing the completion of this run
	echo "run " $i " done"

done

echo -e "\n\n\n AggregateAvg - string_32gb finished"	#****

