var=10

ran=$(($RANDOM % $var))
echo $ran

htm="<html><body> $ran </body></html>"

echo $htm

cat << EOF > index.html 
$htm



