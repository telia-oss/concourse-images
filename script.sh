#!/usr/bin/bash

echo "Hello World"
#echo $MATCHED_FILES
#echo $GIT_DIFF
sudo apt-get install jq
echo $MATCHED_FILES >> CHANGED_FILES
echo $MATCHED_FILES | jq --raw-input 'gsub("'"'"'"; "") | split(" ") | map( { Dockerimage: .} ) | { Include: . }'
#jq --raw-input \'gsub("'"; "") | split(" ") | map( { Dockerimage: .} ) | { Include: . }\'
# sed -e "s/'//g" CHANGED_FILES
# sed -i "s/'/\n/g" CHANGED_FILES && sed -i '/^$/d' CHANGED_FILES && awk -i inplace 'NF' CHANGED_FILES
# sed -i "s/' '/, /g" CHANGED_FILES && sed -i 's/^./[/;s/.$/]/' CHANGED_FILES
# cat CHANGED_FILES
# printenv


# FILES=$(<CHANGED_FILES)
# echo "these are the files that changed" $FILES "please work"

# JSON_STRING = {"Dockerfile":"'"$}

# #declare -a arrVar=()
# for line in `cat CHANGED_FILES`
# do
#     $ARR_VAR+=$line          
# done

#  for value in "${ARR_VAR[@]}"
#  do
#       echo $value
#  done

# export FILES
# printenv | grep FILES
# echo "::set-output name=files::$FILES"
# #printenv arrVar
# #echo ${arrVar[@]}
# echo $arrVar