hexo clean 
hexo g
hexo d 

git add .
git commit -a -m "update source code."
git push origin main

rm -rf ../tmpxhlumdfile
mkdir ../tmpxhlumdfile
cp ./source/_posts/* ../tmpxhlumdfile -rf 

git checkout resp_md_file
rm -rf *
cp ../tmpxhlumdfile/* . -rf 
git add .
git commit -a -m "update article."
git push origin resp_md_file

git checkout main
