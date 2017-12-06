rs := {integer key, integer fill};

#WORKUNIT('name', 'join_2GB_2GB');
dataset_name2 := 'IntegerDataSet_2GB_A';
dataset_name4 := 'IntegerDataSet_2GB_B';
outdata2 := DATASET(dataset_name2, rs, THOR);
outdata4 := DATASET(dataset_name4, rs, THOR);
outdata2_4 := JOIN(outdata2, outdata4, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata2_4)));

#WORKUNIT('name', 'join_2GB_4GB');
dataset_name2 := 'IntegerDataSet_2GB';
dataset_name4 := 'IntegerDataSet_4GB';
outdata2 := DATASET(dataset_name2, rs, THOR);
outdata4 := DATASET(dataset_name4, rs, THOR);
outdata2_4 := JOIN(outdata2, outdata4, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata2_4)));

#WORKUNIT('name', 'join_2GB_8GB');
dataset_name2 := 'IntegerDataSet_2GB';
dataset_name8 := 'IntegerDataSet_8GB';
outdata2 := DATASET(dataset_name2, rs, THOR);
outdata8 := DATASET(dataset_name8, rs, THOR);
outdata2_8 := JOIN(outdata2, outdata8, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata2_8)));

#WORKUNIT('name', 'join_2GB_16GB');
dataset_name2 := 'IntegerDataSet_2GB';
dataset_name16 := 'IntegerDataSet_16GB';
outdata2 := DATASET(dataset_name2, rs, THOR);
outdata16 := DATASET(dataset_name16, rs, THOR);
outdata2_16 := JOIN(outdata2, outdata16, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata2_16)));

#WORKUNIT('name', 'join_4GB_8GB');
dataset_name4 := 'IntegerDataSet_4GB';
dataset_name8 := 'IntegerDataSet_8GB';
outdata4 := DATASET(dataset_name4, rs, THOR);
outdata8 := DATASET(dataset_name8, rs, THOR);
outdata4_8 := JOIN(outdata4, outdata8, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata4_8)));

#WORKUNIT('name', 'join_4GB_16GB');
dataset_name4 := 'IntegerDataSet_4GB';
dataset_name16 := 'IntegerDataSet_16GB';
outdata4 := DATASET(dataset_name4, rs, THOR);
outdata16 := DATASET(dataset_name16, rs, THOR);
outdata4_16 := JOIN(outdata4, outdata16, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata4_16)));

#WORKUNIT('name', 'join_4GB_32GB');
dataset_name4 := 'IntegerDataSet_4GB';
dataset_name32 := 'IntegerDataSet_32GB';
outdata4 := DATASET(dataset_name4, rs, THOR);
outdata32 := DATASET(dataset_name32, rs, THOR);
outdata4_32 := JOIN(outdata4, outdata32, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata4_32)));


#WORKUNIT('name', 'join_8GB_16GB');
dataset_name8 := 'IntegerDataSet_8GB';
dataset_name16 := 'IntegerDataSet_16GB';
outdata8 := DATASET(dataset_name8, rs, THOR);
outdata16 := DATASET(dataset_name16, rs, THOR);
outdata8_16 := JOIN(outdata8, outdata16, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata8_16)));

#WORKUNIT('name', 'join_8GB_32GB');
dataset_name8 := 'IntegerDataSet_8GB';
dataset_name32 := 'IntegerDataSet_32GB';
outdata8 := DATASET(dataset_name8, rs, THOR);
outdata32 := DATASET(dataset_name32, rs, THOR);
outdata8_32 := JOIN(outdata8, outdata32, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata8_32)));

#WORKUNIT('name', 'join_16GB_32GB');
dataset_name16 := 'IntegerDataSet_16GB';
dataset_name32 := 'IntegerDataSet_32GB';
outdata16 := DATASET(dataset_name16, rs, THOR);
outdata32 := DATASET(dataset_name32, rs, THOR);
outdata16_32 := JOIN(outdata16, outdata32, left.key=right.key, INNER);
OUTPUT(COUNT(NOFOLD(outdata16_32)));
