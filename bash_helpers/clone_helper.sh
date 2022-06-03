repo=$(tail -1 $1)
echo $repo

git clone https://github.com/"$repo".git
