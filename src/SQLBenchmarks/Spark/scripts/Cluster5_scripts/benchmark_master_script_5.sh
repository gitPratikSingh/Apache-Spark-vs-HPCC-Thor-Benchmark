#!/bin/bash

#script to run benchmark tests for spark on  cluster5

set -e

./FilterLowSelectivity.sh

./FilterHighSelectivity.sh &&

./AggregateCountDistinct.sh &&

./AggregateCountTotal.sh &&

./AggregateMax.sh &&

./AggregateMin.sh &&

./AggregateAvg.sh &&

## join - combinations to be decided
#sh ./Join.sh

./SortRandom.sh

##to be finalized
#sh ./SortSorted.sh