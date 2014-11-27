
LINUX_BUILD=49
MAC_BUILD=35
WINDOWS_BUILD=41

rm windows linux mac -rf

mkdir -p linux/32 linux/64 windows mac

wget http://bamboo.darkcoin.qa/artifact/DRKL-DEV/JOB1/build-$LINUX_BUILD/gitian-linux-darkcoin-bin/bin/32/darkcoin-qt -O linux/32/darkcoin-qt
wget http://bamboo.darkcoin.qa/artifact/DRKL-DEV/JOB1/build-$LINUX_BUILD/gitian-linux-darkcoin-bin/bin/32/darkcoind -O linux/32/darkcoind

wget http://bamboo.darkcoin.qa/artifact/DRKL-DEV/JOB1/build-$LINUX_BUILD/gitian-linux-darkcoin-bin/bin/64/darkcoin-qt -O linux/64/darkcoin-qt
wget http://bamboo.darkcoin.qa/artifact/DRKL-DEV/JOB1/build-$LINUX_BUILD/gitian-linux-darkcoin-bin/bin/64/darkcoind   -O linux/64/darkcoind

#---

wget http://bamboo.darkcoin.qa/browse/DRKM-DEV-$MAC_BUILD/artifact/JOB1/gitian-osx-darkcoin-dist/darkcoin-0.10.17.0-osx.dmg -O mac/darkcoin-0.10.17.0-osx.dmg

#---

wget http://bamboo.darkcoin.qa/artifact/DRKW-DEV/JOB1/build-$WINDOWS_BUILD/gitian-win-darkcoin-bin/32/darkcoin-qt.exe -O windows/darkcoin-qt.exe
wget http://bamboo.darkcoin.qa/artifact/DRKW-DEV/JOB1/build-$WINDOWS_BUILD/gitian-win-darkcoin-bin/32/daemon/darkcoind.exe -O windows/darkcoind.exe
