login_password=$(tail -1 $1)
repo=$(tail -1 $2)
comment=$(tail -1 $3)

folder="$(echo $repo | cut -d'/' -f2)"
cd $folder

git add --all
git commit -m "$comment"
git push https://"$login_password"@github.com/"$repo".git
