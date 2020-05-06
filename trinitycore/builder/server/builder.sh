#!/bin/sh

cd /wow
wget -O src.zip https://github.com/TrinityCore/TrinityCore/archive/3.3.5.zip
wget -O TDB.7z https://github.com/TrinityCore/TrinityCore/releases/download/TDB335.20041/TDB_full_world_335.20041_2020_04_15.7z
unzip src.zip
7zr x TDB.7z
mv TrinityCore-3.3.5/ src
mkdir /wow/src/build
cd /wow/src/build
cmake ../ -DCMAKE_INSTALL_PREFIX=/wow
make -j $(nproc) install
rm -rf /wow/src/build
rm -rf /wow/src.zip
rm -rf /wow/TDB.7z
cp /wow/etc/authserver.conf.dist /wow/etc/authserver.conf
cp /wow/etc/worldserver.conf.dist /wow/etc/worldserver.conf
sed -i 's/LoginDatabaseInfo = "127.0.0.1/LoginDatabaseInfo = "wow-db/g' /wow/etc/authserver.conf
sed -i 's/LoginDatabaseInfo     = "127.0.0.1/LoginDatabaseInfo     = "wow-db/g' /wow/etc/worldserver.conf
sed -i 's/WorldDatabaseInfo     = "127.0.0.1/WorldDatabaseInfo     = "wow-db/g' /wow/etc/worldserver.conf
sed -i 's/CharacterDatabaseInfo = "127.0.0.1/CharacterDatabaseInfo = "wow-db/g' /wow/etc/worldserver.conf