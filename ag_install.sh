sudo yum install -y xz-devel zlib-devel pcre-devel

wget https://github.com/ggreer/the_silver_searcher/archive/master.zip 

mv master.zip ag.zip 

unzip ag.zip 

cd the_silver_searcher-master/ 

./build.sh 

sudo make install

