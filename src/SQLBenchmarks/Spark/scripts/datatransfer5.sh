#!/bin/bash

###change the ip of the master node

scp -i "spark5.pem" /home/ubuntu/data/integer_dataset/integer_2gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/integer/

scp -i "spark5.pem" /home/ubuntu/data/integer_dataset/integer_4gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/integer/


scp -i "spark5.pem" /home/ubuntu/data/integer_dataset/integer_8gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/integer/

scp -i "spark5.pem" /home/ubuntu/data/integer_dataset/integer_16gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/integer/

scp -i "spark5.pem" /home/ubuntu/data/integer_dataset/integer_32gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/integer/

scp -i "spark5.pem" /home/ubuntu/data/string_dataset/string_2gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/string/

scp -i "spark5.pem" /home/ubuntu/data/string_dataset/string_4gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/string/


scp -i "spark5.pem" /home/ubuntu/data/string_dataset/string_8gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/string/

scp -i "spark5.pem" /home/ubuntu/data/string_dataset/string_16gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/string/

scp -i "spark5.pem" /home/ubuntu/data/string_dataset/string_32gb.csv ec2-user@ec2-34-216-49-159.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/string/

