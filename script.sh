cd auto-git
var=10

ran=$(($RANDOM % $var))
echo $ran

echo $USER

htm="<html><head><title>Get Your Lucky Number</title><link rel='stylesheet' href='style.css'><meta name='viewport' content='width=device-width, initial-scale=1.0'></head><body><div class='main'><span>Today's Lucky Number :</span> $ran </div></body></html>"

echo $htm

git pull

cat << EOF > index.html 
$htm
EOF

timestamp=$(date +%T)

cat << EOF > README.md
# This is a Auto Git Commit Script :robot:
## :supervillain_man: Running on AWS automatically updating the webpage everyday
## :earth_asia: Checkout Website:  https://bdbose.github.io/auto-git/index.html


- :alarm_clock: Last Updated at $timestamp
EOF

git add .

git commit -m "Index Updated"

git push

cd ..
