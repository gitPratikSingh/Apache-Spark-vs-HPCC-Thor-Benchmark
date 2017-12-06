rs := {integer  key, integer  fill};

//min
#WORKUNIT('name', 'Avg_2GB');
dataset_name_2GB := 'IntegerDataSet_2GB';
outdata_2GB := DATASET(dataset_name_2GB, rs, csv);
OUTPUT(MIN(outdata_2GB, key));

#WORKUNIT('name', 'Avg_4GB');
dataset_name_4GB := 'IntegerDataSet_4GB';
outdata_4GB := DATASET(dataset_name_4GB, rs, csv);
OUTPUT(MIN(outdata_4GB, key));

#WORKUNIT('name', 'Avg_8GB');
dataset_name_8GB := 'IntegerDataSet_8GB';
outdata_8GB := DATASET(dataset_name_8GB, rs, csv);
OUTPUT(MIN(outdata_8GB, key));

#WORKUNIT('name', 'Avg_16GB');
dataset_name_16GB := 'IntegerDataSet_16GB';
outdata_16GB := DATASET(dataset_name_16GB, rs, csv);
OUTPUT(MIN(outdata_16GB, key));

#WORKUNIT('name', 'Avg_32GB');
dataset_name_32GB := 'IntegerDataSet_32GB';
outdata_32GB := DATASET(dataset_name_32GB, rs, csv);
OUTPUT(MIN(outdata_32GB, key));

