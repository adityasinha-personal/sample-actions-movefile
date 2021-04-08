#! /bin/sh
landing_location=temp/local/
file_name=sample-file.txt
mkdir -p $landing_location && cp $file_name $landing_location 
git add $landing_location$file_name
git commit -m "Sample file moved for previous release"
