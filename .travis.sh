#!/bin/sh

# The following commands are invoked by the before_script hook
# in .travis.yml . They install a recent release of Parrot
# and the master branch of libgit2

echo "LD_LIBRARY_PATH=$LD_LIBRARY_PATH"

# Grab a recent Parrot VM
wget https://github.com/parrot/parrot/archive/RELEASE_5_7_0.zip
unzip RELEASE*
cd parrot-RELEASE*
pwd
perl Configure.pl --prefix="/tmp/installed_parrot" && make install
export PATH=/tmp/installed_parrot/bin/:$PATH
cd ..

# The code below was lovingly borrowed from:
# https://raw.github.com/libgit2/pygit2/master/.travis.sh

cd ~

git clone --depth=1 -b master https://github.com/libgit2/libgit2.git
cd libgit2/

mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=../_install -DBUILD_CLAR=OFF
cmake --build . --target install

ls -la ..
