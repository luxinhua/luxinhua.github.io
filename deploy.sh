git checkout -b source_dev origin/source_dev
git checkout -b resp_md_file origin/resp_md_file
git checkout main

hexo clean 
hexo g
npm install --save hexo-deployer-git
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
