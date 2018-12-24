#!/bin/sh

echo "Installing i3-gaps dependencies using APT ..."

sudo apt install libxcb-keysyms1-dev libpango1.0-dev \
  libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev \
  libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev \
  libxcb-xinerama0-dev libxkbcommon-x11-dev \
  libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm-dev \
  libxcb-shape0-dev

echo
echo "You can now clone https://github.com/Airblader/i3.git and"
echo "compile i3-gaps using the following set of commands:"
echo
echo '
cd /path/where/you/want/the/repository

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
'





