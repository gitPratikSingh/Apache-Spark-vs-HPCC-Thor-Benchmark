rs := {integer  key, integer  fill};

// filter!
#WORKUNIT('name', 'Filter_2GB');
dataset_name_2GB := 'IntegerDataSet_2GB';
outdata_2GB := DATASET(dataset_name_2GB, rs, csv);
output(COUNT(NOFOLD(outdata_2GB(outdata_2GB.key IN [686612] ))));

// filter!
#WORKUNIT('name', 'Filter_4GB');
dataset_name_4GB := 'IntegerDataSet_4GB';
outdata_4GB := DATASET(dataset_name_4GB, rs, csv);
output(COUNT(NOFOLD(outdata_4GB(outdata_4GB.key IN [686612] ))));

// filter!
#WORKUNIT('name', 'Filter_8GB');
dataset_name_8GB := 'IntegerDataSet_8GB';
outdata_8GB := DATASET(dataset_name_8GB, rs, csv);
output(COUNT(NOFOLD(outdata_8GB(outdata_8GB.key IN [686612] ))));

// filter!
#WORKUNIT('name', 'Filter_16GB');
dataset_name_16GB := 'IntegerDataSet_16GB';
outdata_16GB := DATASET(dataset_name_16GB, rs, csv);
output(COUNT(NOFOLD(outdata_16GB(outdata_16GB.key IN [686612] ))));

// filter!
#WORKUNIT('name', 'Filter_32GB');
dataset_name_32GB := 'IntegerDataSet_32GB';
outdata_32GB := DATASET(dataset_name_32GB, rs, csv);
output(COUNT(NOFOLD(outdata_32GB(outdata_32GB.key IN [686612] ))));
