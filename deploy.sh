git add .
git commit -a -m "update source code."
git push origin main
rm -rf ../public
mkdir ../public
git checkout source_dev
cp ./public/* ../public -rf 
cp ../public/* . -rf
git add .
git commit -a -m "update article."
git push origin source_dev
git checkout main
