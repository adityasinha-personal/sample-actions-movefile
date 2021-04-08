#! /bin/sh
file_name=sample-file.txt
version=$(cat version | grep version_name | sed -E "s/^version_name=(.*)$/\1/")
landing_location=temp/$version/
mkdir -p $landing_location && cp $file_name $landing_location 
git add $landing_location$file_name
git commit -m "Sample file moved for $version version"
