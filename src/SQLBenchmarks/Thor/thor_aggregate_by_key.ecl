rs := {integer key, integer fill};

#WORKUNIT('name', 'aggr_2');
dataset_name2 := 'IntegerDataSet_2GB';
outdata2 := DATASET(dataset_name2, rs, THOR);
outdata22 := TABLE(outdata2, {key, SUM(GROUP, fill)}, key, FEW);
OUTPUT(COUNT(NOFOLD(outdata22)));

#WORKUNIT('name', 'aggr_4');
dataset_name4 := 'IntegerDataSet_4GB';
outdata4 := DATASET(dataset_name4, rs, THOR);
outdata44 := TABLE(outdata4, {key, SUM(GROUP, fill)}, key, FEW);
OUTPUT(COUNT(NOFOLD(outdata44)));

#WORKUNIT('name', 'aggr_8');
dataset_name8 := 'IntegerDataSet_8GB';
outdata8 := DATASET(dataset_name8, rs, THOR);
outdata88 := TABLE(outdata8, {key, SUM(GROUP, fill)}, key, FEW);
OUTPUT(COUNT(NOFOLD(outdata88)));

#WORKUNIT('name', 'aggr_16');
dataset_name16 := 'IntegerDataSet_16GB';
outdata16 := DATASET(dataset_name16, rs, THOR);
outdata1616 := TABLE(outdata16, {key, SUM(GROUP, fill)}, key, FEW);
OUTPUT(COUNT(NOFOLD(outdata1616)));

#WORKUNIT('name', 'aggr_32');
dataset_name32 := 'IntegerDataSet_32GB';
outdata32 := DATASET(dataset_name32, rs, THOR);
outdata3232 := TABLE(outdata32, {key, SUM(GROUP, fill)}, key, FEW);
OUTPUT(COUNT(NOFOLD(outdata3232)));
