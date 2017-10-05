set -e

status=0
for f in ../data/characters/*.json 
do 
  curl -s -u user:user -XGET -H "Accept: application/json" http://127.0.0.1:8080/rest/indexed/$(basename $f .json) | jsonlint
  let status=status+1
  echo  "Read $status characters"
done
