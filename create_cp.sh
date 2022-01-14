#!/bin/bash

org_folder=$1
cp_folder=$2

current_time=$(date "+%Y%m%d-%H%M%S")
FILE_COUNT=$(find $cp_folder -type f | wc -l)

pf_filename=$3
copy_pf_filename=$current_time-$pf_filename
replica_file=$2$pf_filename
original_file=$1$pf_filename 

#echo "cp file"
#echo $(date)
#echo $org_folder
echo $FILE_COUNT

diff_result=$(diff $original_file $replica_file)
#echo $diff_result

if (( $FILE_COUNT < 100 )); then
    if [[ -n $diff_result ]]; then
        #echo "cp file"
        cp $original_file $2$copy_pf_filename
        cp $original_file $replica_file
    fi
fi