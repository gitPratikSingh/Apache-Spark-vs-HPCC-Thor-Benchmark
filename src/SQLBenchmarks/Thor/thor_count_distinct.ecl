//count distinct
rs := {integer  key, integer  fill};

#WORKUNIT('name', 'CountDistinctKeys_2GB');
dataset_name_2GB := 'IntegerDataSet_2GB';
outdata_2GB := DATASET(dataset_name_2GB, rs, csv);
COUNT(TABLE(outdata_2GB,{key},key));


#WORKUNIT('name', 'CountDistinctKeys_4GB');
dataset_name_4GB := 'IntegerDataSet_4GB';
outdata_4GB := DATASET(dataset_name_4GB, rs, csv);
COUNT(TABLE(outdata_4GB,{key},key));


#WORKUNIT('name', 'CountDistinctKeys_8GB');
dataset_name_8GB := 'IntegerDataSet_8GB';
outdata_8GB := DATASET(dataset_name_8GB, rs, csv);
COUNT(TABLE(outdata_8GB,{key},key));


#WORKUNIT('name', 'CountDistinctKeys_16GB');
dataset_name_16GB := 'IntegerDataSet_16GB';
outdata_16GB := DATASET(dataset_name_16GB, rs, csv);
COUNT(TABLE(outdata_16GB,{key},key));


#WORKUNIT('name', 'CountDistinctKeys_32GB');
dataset_name_32GB := 'IntegerDataSet_32GB';
outdata_32GB := DATASET(dataset_name_32GB, rs, csv);
COUNT(TABLE(outdata_32GB,{key},key));
