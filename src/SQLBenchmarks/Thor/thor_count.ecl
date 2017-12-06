

rec := {integer  key, integer  fill};

#WORKUNIT('name', 'Count2');
dataset_name := 'IntegerDataSet_2GB';
outdata := DATASET(dataset_name, rs, THOR);
output(COUNT(NOFOLD(outdata)));

#WORKUNIT('name', 'Count4');
dataset_name4 := 'IntegerDataSet_4GB';
outdata4 := DATASET(dataset_name4, rs, THOR);
output(COUNT(NOFOLD(outdata4)));

#WORKUNIT('name', 'Count8');
dataset_name8 := 'IntegerDataSet_8GB';
outdata8 := DATASET(dataset_name8, rs, THOR);
output(COUNT(NOFOLD(outdata8)));

#WORKUNIT('name', 'Count16');
dataset_name16 := 'IntegerDataSet_16GB';
outdata16 := DATASET(dataset_name16, rs, THOR);
output(COUNT(NOFOLD(outdata16)));

#WORKUNIT('name', 'Count32');
dataset_name32 := 'IntegerDataSet_32GB';
outdata32 := DATASET(dataset_name32, rs, THOR);
output(COUNT(NOFOLD(outdata32)));


