#!/bin/bash

#run on master node of sparkcluster5

##create directory on hdfs

set -e

sudo hadoop fs -mkdir -p user/hadoop/datasets/integer /user/hadoop/datasets/string


##upload datasets to hdfs

sudo hadoop fs -put -p -f /mnt/spark_datasets/integer/integer_2gb.csv /user/hadoop/datasets/integer


sudo hadoop fs -put -p -f /mnt/spark_datasets/integer/integer_4gb.csv /user/hadoop/datasets/integer

sudo hadoop fs -put -p -f /mnt/spark_datasets/integer/integer_8gb.csv /user/hadoop/datasets/integer

sudo hadoop fs -put -p -f /mnt/spark_datasets/integer/integer_16gb.csv /user/hadoop/datasets/integer

sudo hadoop fs -put -p -f /mnt/spark_datasets/integer/integer_32gb.csv /user/hadoop/datasets/integer

sudo hadoop fs -put -p -f /mnt/spark_datasets/string/string_2gb.csv /user/hadoop/datasets/string

sudo hadoop fs -put -p -f /mnt/spark_datasets/string/string_4gb.csv /user/hadoop/datasets/string

sudo hadoop fs -put -p -f /mnt/spark_datasets/string/string_8gb.csv /user/hadoop/datasets/string

sudo hadoop fs -put -p -f /mnt/spark_datasets/string/string_16gb.csv /user/hadoop/datasets/string

sudo hadoop fs -put -p -f /mnt/spark_datasets/string/string_32gb.csv /user/hadoop/datasets/string



