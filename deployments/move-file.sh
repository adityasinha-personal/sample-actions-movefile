#! /bin/sh
user_name=$1
repo_name=$2
github_token=$3
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
then
    echo "Invalid Input Parameters"
    exit
fi

landing_location=temp/local/
file_name=sample-file.txt
mkdir -p $landing_location && cp $file_name $landing_location 
git remote add push_temp https://$user_name:$github_token@github.com/$user_name/$repo_name.git
git add $landing_location$file_name
git commit -m "Sample file moved for previous release"
git push push_temp main
git remote rm push_temp
