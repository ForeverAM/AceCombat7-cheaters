git config user.name "ForeverAM"
git config user.email "3579498254489@foxmail.com"

cha=`git status -s`
upd=`expr length "$cha"`

if [ $upd != 0 ]
then  
  git commit -a -m "Merge"
  git push
else echo 'no change'
fi
