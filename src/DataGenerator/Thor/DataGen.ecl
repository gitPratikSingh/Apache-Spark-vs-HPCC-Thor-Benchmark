
rec := {integer  key, integer  fill};

#WORKUNIT('name', 'DataGenerationInteger2GB');
unique_keys2GB :=  1000000;  
unique_values2GB := 100000; 
dataset_name2GB := 'IntegerDataSet_2GB'; 
totalrecs2GB := 135000000;
outdata2GB := DATASET(totalrecs2GB, transform(rec, self.key := random() % unique_keys2GB; self.fill := random() % unique_values2GB;), DISTRIBUTED); 
OUTPUT(outdata2GB,,dataset_name2GB,overwrite, CSV);

#WORKUNIT('name', 'DataGenerationInteger4GB');
unique_keys4GB :=  1000000*2;  
unique_values4GB := 100000*2; 
dataset_name4GB := 'IntegerDataSet_4GB'; 
totalrecs4GB := 135000000*2;
outdata4GB := DATASET(totalrecs4GB, transform(rec, self.key := random() % unique_keys4GB; self.fill := random() % unique_values4GB;), DISTRIBUTED); 
OUTPUT(outdata4GB,,dataset_name4GB,overwrite, CSV);

#WORKUNIT('name', 'DataGenerationInteger8GB');
unique_keys8GB :=  1000000*4;  
unique_values8GB := 100000*4; 
dataset_name8GB := 'IntegerDataSet_8GB'; 
totalrecs8GB := 135000000*4;
outdata8GB := DATASET(totalrecs8GB, transform(rec, self.key := random() % unique_keys8GB; self.fill := random() % unique_values8GB;), DISTRIBUTED); 
OUTPUT(outdata8GB,,dataset_name8GB,overwrite, CSV);

#WORKUNIT('name', 'DataGenerationInteger16GB');
unique_keys16GB :=  1000000*8;  
unique_values16GB := 100000*8; 
dataset_name16GB := 'IntegerDataSet_16GB'; 
totalrecs16GB := 135000000*8;
outdata16GB := DATASET(totalrecs16GB, transform(rec, self.key := random() % unique_keys16GB; self.fill := random() % unique_values16GB;), DISTRIBUTED); 
OUTPUT(outdata16GB,,dataset_name16GB,overwrite, CSV);

#WORKUNIT('name', 'DataGenerationInteger32GB');
unique_keys32GB :=  1000000*16;  
unique_values32GB := 100000*16; 
dataset_name32GB := 'IntegerDataSet_32GB'; 
totalrecs32GB := 135000000*16;
outdata32GB := DATASET(totalrecs32GB, transform(rec, self.key := random() % unique_keys32GB; self.fill := random() % unique_values32GB;), DISTRIBUTED); 
OUTPUT(outdata32GB,,dataset_name32GB,overwrite, CSV);


/*******************************String Data Generator ******************************************/

// data structure for String data  
rec_string := {string10  key, string90  fill};

// generate String of size 10
string10 gen_key() := function
    return (>string1<)(48+RANDOM()%9)+
                (>string1<)(48+RANDOM()%9)+
                (>string1<)(48+RANDOM()%9)+
                (>string1<)(48+RANDOM()%9)+
                (>string1<)(48+RANDOM()%9)+
                (>string1<)(48+RANDOM()%9)+
                (>string1<)(48+RANDOM()%9)+
                (>string1<)(48+RANDOM()%9)+
                (>string1<)(48+RANDOM()%9)+
                (>string1<)(48+RANDOM()%9);
END;

// generate String of size 90
string90 gen_fill():= function
    string1 c1 := (>string1<)(48+RANDOM()%9);
    string1 c2 := (>string1<)(RANDOM()%9+48);
    string1 c3 := (>string1<)(RANDOM()%9+48);
    string1 c4 := (>string1<)(RANDOM()%9+48);
    string1 c5 := (>string1<)(RANDOM()%9+48);
    string1 c6 := (>string1<)(RANDOM()%9+48);
    string1 c7 := (>string1<)(RANDOM()%9+48);
    string1 c8 := (>string1<)(RANDOM()%9+48);
    string1 c9 := (>string1<)(RANDOM()%9+48);
    return   c1+c1+c1+c1+c1+c1+c1+c1+c1+c1+
             c2+c2+c2+c2+c2+c2+c2+c2+c2+c2+
             c3+c3+c3+c3+c3+c3+c3+c3+c3+c3+
             c4+c4+c4+c4+c4+c4+c4+c4+c4+c4+
             c5+c5+c5+c5+c5+c5+c5+c5+c5+c5+
             c6+c6+c6+c6+c6+c6+c6+c6+c6+c6+
             c7+c7+c7+c7+c7+c7+c7+c7+c7+c7+
             c8+c8+c8+c8+c8+c8+c8+c8+c8+c8+
             c9+c9+c9+c9+c9+c9+c9+c9+c9+c9;
  END;
  

#WORKUNIT('name', 'DataGenerationString2GB');
dataset_name2GB := 'StringDataSet_2GB'; 
totalrecs2GB := 20000000;
outdata2GB := DATASET(totalrecs2GB, transform(rec_string, self.key := gen_key(), self.fill := gen_fill()), DISTRIBUTED);
OUTPUT(outdata2GB,,dataset_name2GB,overwrite, CSV);


#WORKUNIT('name', 'DataGenerationString4GB');
dataset_name4GB := 'StringDataSet_4GB'; 
totalrecs4GB := 20000000*2;
outdata4GB := DATASET(totalrecs4GB, transform(rec_string, self.key := gen_key(), self.fill := gen_fill()), DISTRIBUTED);
OUTPUT(outdata4GB,,dataset_name4GB,overwrite, CSV);


#WORKUNIT('name', 'DataGenerationString8GB');
dataset_name8GB := 'StringDataSet_8GB'; 
totalrecs8GB := 20000000*4;
outdata8GB := DATASET(totalrecs8GB, transform(rec_string, self.key := gen_key(), self.fill := gen_fill()), DISTRIBUTED);
OUTPUT(outdata8GB,,dataset_name8GB,overwrite, CSV);


#WORKUNIT('name', 'DataGenerationString16GB');
dataset_name16GB := 'StringDataSet_16GB'; 
totalrecs16GB := 20000000*8;
outdata16GB := DATASET(totalrecs16GB, transform(rec_string, self.key := gen_key(), self.fill := gen_fill()), DISTRIBUTED);
OUTPUT(outdata16GB,,dataset_name16GB,overwrite, CSV);


#WORKUNIT('name', 'DataGenerationString32GB');
dataset_name32GB := 'StringDataSet_32GB'; 
totalrecs32GB := 20000000*16;
outdata32GB := DATASET(totalrecs32GB, transform(rec_string, self.key := gen_key(), self.fill := gen_fill()), DISTRIBUTED);
OUTPUT(outdata32GB,,dataset_name32GB,overwrite, CSV);



