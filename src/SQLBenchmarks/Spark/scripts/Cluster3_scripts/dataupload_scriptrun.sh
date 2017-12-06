#!/bin/bash

##upload datasets to hdfs

hadoop fs -put -p -f /mnt/spark_datasets/integer/integer_4gb.csv /user/hadoop/datasets/integer

hadoop fs -put -p -f /mnt/spark_datasets/integer/integer_8gb.csv /user/hadoop/datasets/integer

hadoop fs -put -p -f /mnt/spark_datasets/integer/integer_16gb.csv /user/hadoop/datasets/integer

hadoop fs -put -p -f /mnt/spark_datasets/integer/integer_32gb.csv /user/hadoop/datasets/integer

hadoop fs -put -p -f /mnt/spark_datasets/string/string_2gb.csv /user/hadoop/datasets/string

hadoop fs -put -p -f /mnt/spark_datasets/string/string_4gb.csv /user/hadoop/datasets/string

hadoop fs -put -p -f /mnt/spark_datasets/string/string_8gb.csv /user/hadoop/datasets/string

hadoop fs -put -p -f /mnt/spark_datasets/string/string_16gb.csv /user/hadoop/datasets/string

hadoop fs -put -p -f /mnt/spark_datasets/string/string_32gb.csv /user/hadoop/datasets/string




#run benchmarking scripts

/home/ec2-user/RamBharose/src/SQLBenchmarks/Spark/scripts/Cluster3_scripts/benchmark_master_script_3.sh