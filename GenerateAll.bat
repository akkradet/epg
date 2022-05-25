@echo off
echo Check if the files are deleted
del %USERPROFILE%\AppData\Local\WebGrab+Plus\aisplay.ais.co.th.epg.xml /Q
del %USERPROFILE%\AppData\Local\WebGrab+Plus\tv.trueid.net.epg.xml /Q
del %USERPROFILE%\AppData\Local\WebGrab+Plus\gigatv.3bb.co.th.epg.xml /Q

cd D:\Git\epg
echo %date:~10,4%-%date:~4,2%-%date:~7,2% >> GeneratedDate

echo Script started at %time:~0,2%:%time:~3,2%:%time:~6,2% >> GeneratedDate

cd %USERPROFILE%\AppData\Local\WebGrab+Plus
del %USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml /Q
xcopy /y /f D:\Git\epg_encrypted\aisplay.config.xml "%USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml"
"C:\Program Files (x86)\WebGrab+Plus\bin\WebGrab+Plus.exe"
xcopy /y /f "%USERPROFILE%\AppData\Local\WebGrab+Plus\aisplay.ais.co.th.epg.xml" .
echo Generated successfully. >> GeneratedDate
echo Website: aisplay.ais.co.th >> GeneratedDate
echo Name: aisplay.ais.co.th >> GeneratedDate
echo aisplay.ais.co.th EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% ICT >> GeneratedDate
git add aisplay.ais.co.th.epg.xml
git commit -m "Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% ICT"
git push

cd D:\Git\epg
echo %date:~10,4%-%date:~4,2%-%date:~7,2% >> GeneratedDate

echo Script started at %time:~0,2%:%time:~3,2%:%time:~6,2% >> GeneratedDate

cd %USERPROFILE%\AppData\Local\WebGrab+Plus
del %USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml /Q
xcopy /y /f D:\Git\epg_encrypted\trueid.config.xml "%USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml"
"C:\Program Files (x86)\WebGrab+Plus\bin\WebGrab+Plus.exe"
xcopy /y /f "%USERPROFILE%\AppData\Local\WebGrab+Plus\tv.trueid.net.epg.xml" .
echo Generated successfully. >> GeneratedDate
echo Website: tv.trueid.net >> GeneratedDate
echo Name: tv.trueid.net >> GeneratedDate
echo tv.trueid.net EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% ICT >> GeneratedDate
git add tv.trueid.net.epg.xml
git commit -m "Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% ICT"
git push

cd D:\Git\epg
echo %date:~10,4%-%date:~4,2%-%date:~7,2% >> GeneratedDate

echo Script started at %time:~0,2%:%time:~3,2%:%time:~6,2% >> GeneratedDate

cd %USERPROFILE%\AppData\Local\WebGrab+Plus
del %USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml /Q
xcopy /y /f D:\Git\epg_encrypted\gigatv.config.xml "%USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml"
"C:\Program Files (x86)\WebGrab+Plus\bin\WebGrab+Plus.exe"
xcopy /y /f "%USERPROFILE%\AppData\Local\WebGrab+Plus\gigatv.3bb.co.th.epg.xml" .
echo Generated successfully. >> GeneratedDate
echo Website: gigatv.3bb.co.th >> GeneratedDate
echo Name: gigatv.3bb.co.th >> GeneratedDate
echo gigatv.3bb.co.th EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% ICT >> GeneratedDate
git add gigatv.3bb.co.th.epg.xml
git commit -m "Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% ICT"
git push