hexo clean 
hexo g
git add .
git commit -a -m "update source code."
git push origin main
rm -rf ../public
mkdir ../public
cp ./public/* ../public -rf 
git checkout source_dev
rm -rf *
cp ../public/* . -rf
git add .
git commit -a -m "update article."
git push origin source_dev
git checkout main
