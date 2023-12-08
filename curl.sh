filename=$(date +"%d%M%y-%H%M%S")
echo $filename
echo "CURL COMMANDS TO GET STATS OF THE SWITCHES" >> $filename
sleep 0.2
curl="curl -v -X GET http://localhost:8080/stats/switches"
$curl >> $filename
sleep 0.2

echo "CURL COMMANDS TO DESCRIPTION STATS OF THE SWITCHES" >> $filename
sleep 0.2
curl="curl -v -X GET http://localhost:8080/stats/desc/1"
$curl >> $filename
sleep 0.2

echo "CURL COMMANDS TO GET FLOW STATS OF THE SWITCHES" >> $filename
sleep 0.2
curl="curl -v -X GET http://localhost:8080/stats/flow/1"
$curl >> $filename
sleep 0.2


echo "CURL COMMANDS TO GET PORT STATS OF THE SWITCHES" >> $filename
curl="curl -v -X GET http://localhost:8080/stats/port/1"
sleep 0.
$curl >> $filename
sleep 0.2
echo "CURL COMMAND TO GET PORT STATUS"

git status
git add .
git commit -m "new sdn changes pushing to repo"
git push
