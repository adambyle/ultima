@echo off

rmdir /S /Q Ultima\
mkdir Ultima\
mkdir Ultima\region\
mkdir Ultima\data\
mkdir Ultima\datapacks\
copy Ultima_Source\icon.png Ultima\
copy Ultima_Source\level.dat Ultima\
copy Ultima_Source\level.dat_old Ultima\
copy Ultima_Source\region\r.0.0.mca Ultima\region\
copy Ultima_Source\region\r.0.1.mca Ultima\region\
copy Ultima_Source\region\r.0.-1.mca Ultima\region\
copy Ultima_Source\region\r.0.-2.mca Ultima\region\
xcopy /E /I Ultima_Source\entities\ Ultima\entities\
copy Ultima_Source\data\chunks.dat Ultima\data\
xcopy /E /I Ultima_Source\datapacks\Ultima .\
rmdir /S /Q data\ult\functions\util
rmdir /S /Q meta\
rmdir /S /Q docs\

del Ultima-Datapack.zip
7-Zip\7z a Ultima-Datapack.zip data\
7-Zip\7z a Ultima-Datapack.zip pack.mcmeta
rmdir /S /Q data\
del pack.mcmeta

copy Ultima-Datapack.zip Ultima\datapacks\

del Ultima.zip
7-Zip\7z a Ultima.zip Ultima

rmdir /S /Q Ultima\

pause
