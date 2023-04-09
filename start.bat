@ECHO OFF

cd Processing/Test/windows-amd64/
Start /wait Test.exe

cd ../../../

set /A loops=2

for /l %%x in (1, 1, %loops%) do (
:: One year loop from Mining to Auction
cls
echo Press any key to start mining...
pause >nul
cd Processing/Mining/windows-amd64/
Start /wait Mining.exe
cd ../../../

cls
echo Press any key to start save editor...
pause>nul
cls
cd python/
python3 save_editor.py
cd ../

cls
echo Press any key to start upgrade screen...
pause >nul
cd Processing/Upgrade/windows-amd64/
Start /wait Upgrade.exe
cd ../../../

cls
echo Press any key to start auction...
pause>nul
cd Processing/Auction/windows-amd64/
Start /wait Auction.exe
cd ../../../
)