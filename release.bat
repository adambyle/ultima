@echo off

rmdir /S /Q Ultima\
mkdir Ultima\
mkdir Ultima\region\
mkdir Ultima\data\
copy Ultima_Source\icon.png Ultima\
copy Ultima_Source\level.dat Ultima\
copy Ultima_Source\level.dat_old Ultima\
copy Ultima_Source\region\r.0.0.mca Ultima\region\
copy Ultima_Source\region\r.0.1.mca Ultima\region\
copy Ultima_Source\region\r.0.-1.mca Ultima\region\
copy Ultima_Source\region\r.0.-2.mca Ultima\region\
copy Ultima_Source\data\chunks.dat Ultima\data\
xcopy /E /I Ultima_Source\datapacks\ Ultima\datapacks\
