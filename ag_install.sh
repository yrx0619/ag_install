sudo yum install automake
os="`python -mplatform | grep Ubuntu`"
if [ $os ]
then
    sudo apt-get install automake liblzma-dev
else
    sudo yum install -y xz-devel zlib-devel pcre-devel
fi

wget https://github.com/ggreer/the_silver_searcher/archive/master.zip

mv master.zip ag.zip

unzip ag.zip

cd the_silver_searcher-master/

./build.sh

sudo make install

