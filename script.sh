var=10

ran=$(($RANDOM % $var))
echo $ran

htm="<html><body> $ran </body></html>"

echo $htm

git pull

cat << EOF > index.html 
$htm
EOF

git add .

git commit -m "Index Updated"

git push


