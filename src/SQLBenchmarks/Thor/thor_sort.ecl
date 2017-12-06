rs := {integer key, integer fill};

#WORKUNIT('name', 'sort_2GB');
dataset_name2 := 'IntegerDataSet_2GB';
outdata2 := DATASET(dataset_name2, rs, THOR);
outdata22 := SORT(outdata2, key);
OUTPUT(COUNT(NOFOLD(outdata22)));

#WORKUNIT('name', 'sort_4GB');
dataset_name4 := 'IntegerDataSet_4GB';
outdata4 := DATASET(dataset_name4, rs, THOR);
outdata44 := SORT(outdata4, key);
OUTPUT(COUNT(NOFOLD(outdata44)));

#WORKUNIT('name', 'sort_8GB');
dataset_name8 := 'IntegerDataSet_8GB';
outdata8 := DATASET(dataset_name8, rs, THOR);
outdata88 := SORT(outdata8, key);
OUTPUT(COUNT(NOFOLD(outdata88)));

#WORKUNIT('name', 'sort_16GB');
dataset_name16 := 'IntegerDataSet_16GB';
outdata16 := DATASET(dataset_name16, rs, THOR);
outdata1616 := SORT(outdata16, key);
OUTPUT(COUNT(NOFOLD(outdata1616)));

#WORKUNIT('name', 'sort_32GB');
dataset_name32 := 'IntegerDataSet_32GB';
outdata32 := DATASET(dataset_name32, rs, THOR);
outdata3232 := SORT(outdata32, key);
OUTPUT(COUNT(NOFOLD(outdata3232)));

