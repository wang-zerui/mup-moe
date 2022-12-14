#! /bin/bash
 
ARRAY=(0.00097 0.0016 0.0025 0.0039 0.0062 0.0098 0.016 0.025 0.039 0.0625 )
# Get size of the array
# From 0 to (sizeof(array) - 1)
# So NUM = NUM - 1 
NUM=${#ARRAY[@]}
NUM=`expr $NUM - 1`
 
for i in $(seq 0 $NUM)
do
temp=${ARRAY[$i]}
python main.py --load_base_shapes width64.bsh --lr $temp --sp
done