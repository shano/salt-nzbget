sudo wget http://sourceforge.net/projects/nzbget/files/nzbget-11.0.tar.gz sudo tar -xvf nzbget-11.0.tar.gz -C /tmp cd /tmp/nzbget-11.0
./configure --disable-libpar2-bugfixes-check
sudo make
sudo make install
sudo rm -rf /tmp/nzbget-11.0
