os="`python -mplatform | grep Ubuntu`"
if [ $os ]
then
    sudo apt-get install automake liblzma-dev || exit 1
else
    sudo yum install -y xz-devel zlib-devel pcre-devel || exit 1
fi

wget https://github.com/ggreer/the_silver_searcher/archive/master.zip || exit 1

mv master.zip ag.zip || exit 1

unzip ag.zip || exit 1

cd the_silver_searcher-master/ || exit 1

./build.sh || exit 1

sudo make install || exit 1

ag --version || exit 1

