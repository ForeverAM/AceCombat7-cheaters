git config user.name "337557380"
git config user.email "foreveram@foxmail.com"

cha=`git status -s`
upd=`expr length "$cha"`

if [ $upd != 0 ]
then  
  git commit -a -m "Merge"
  git push
else echo 'no change'
fi
