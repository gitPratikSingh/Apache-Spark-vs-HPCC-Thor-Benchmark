#!/bin/bash

scp -i "spark3.pem" /home/ubuntu/data/integer_dataset/integer_8gb.csv ec2-user@ec2-35-160-249-155.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/integer/

scp -i "spark3.pem" /home/ubuntu/data/integer_dataset/integer_16gb.csv ec2-user@ec2-35-160-249-155.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/integer/

scp -i "spark3.pem" /home/ubuntu/data/integer_dataset/integer_32gb.csv ec2-user@ec2-35-160-249-155.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/integer/

scp -i "spark3.pem" /home/ubuntu/data/string_dataset/string_8gb.csv ec2-user@ec2-35-160-249-155.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/string/

scp -i "spark3.pem" /home/ubuntu/data/string_dataset/string_16gb.csv ec2-user@ec2-35-160-249-155.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/string/

scp -i "spark3.pem" /home/ubuntu/data/string_dataset/string_32gb.csv ec2-user@ec2-35-160-249-155.us-west-2.compute.amazonaws.com:/mnt/spark_datasets/string/

