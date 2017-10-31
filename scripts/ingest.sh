set -e

status=0
for f in ../data/characters/*.json 
do 
  curl -u user:user -XPOST --data-binary @${f}  -H "Content-Type: application/json"  http://127.0.0.1:8080/rest/indexed/$(basename $f .json)
  let status=status+1
  echo  "Imported $status characters"
done
