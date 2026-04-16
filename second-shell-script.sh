#/bin/bash 

mkdir -p testdir/main 

cd testdir/main 

echo file{1..2} | xargs touch 
