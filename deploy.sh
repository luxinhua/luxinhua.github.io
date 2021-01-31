hexo clean 
hexo g
git add .
git commit -a -m "update source code."
git push origin main

rm -rf ../tmpxhlupublic
rm -rf ../tmpxhlumdfile
mkdir ../tmpxhlupublic
mkdir ../tmpxhlumdfile
cp ./public/* ../tmpxhlupublic -rf 
cp ./source/_posts/* ../tmpxhlumdfile -rf 

git checkout source_dev
rm -rf *
cp ../tmpxhlupublic/* . -rf
git add .
git commit -a -m "update article."
git push origin source_dev

git checkout resp_md_file
rm -rf *
cp ../tmpxhlumdfile/* . -rf 
git add .
git commit -a -m "update article."
git push origin resp_md_file

git checkout main
