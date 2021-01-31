rm -rf ../public
mkdir ../public
cp ./public/* ../public -rf 
git checkout -b source_dev origin/source_dev
cp ../public/* . -rf
git add .
git commit -a -m "update article."
git push origin source_dev
