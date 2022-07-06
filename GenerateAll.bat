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
xcopy /S /I /Q /Y /F "D:\Git\epg_encrypted\aisplay.config.xml" "%USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml"
"C:\Program Files (x86)\WebGrab+Plus\bin\WebGrab+Plus.exe"
xcopy /S /I /Q /Y /F "%USERPROFILE%\AppData\Local\WebGrab+Plus\aisplay.ais.co.th.epg.xml" .
tar zcvf aisplay.ais.co.th.epg.xml.gz aisplay.ais.co.th.epg.xml
echo Generated successfully. >> GeneratedDate
echo Website: aisplay.ais.co.th >> GeneratedDate
echo Name: aisplay.ais.co.th >> GeneratedDate
git add .
git commit -m "Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% ICT"
git push

cd D:\Git\epg
echo %date:~10,4%-%date:~4,2%-%date:~7,2% >> GeneratedDate

echo Script started at %time:~0,2%:%time:~3,2%:%time:~6,2% >> GeneratedDate

cd %USERPROFILE%\AppData\Local\WebGrab+Plus
del %USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml /Q
xcopy /S /I /Q /Y /F "D:\Git\epg_encrypted\trueid.config.xml" "%USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml"
"C:\Program Files (x86)\WebGrab+Plus\bin\WebGrab+Plus.exe"
xcopy /S /I /Q /Y /F "%USERPROFILE%\AppData\Local\WebGrab+Plus\tv.trueid.net.epg.xml" .
tar zcvf tv.trueid.net.epg.xml.gz tv.trueid.net.epg.xml
echo Generated successfully. >> GeneratedDate
echo Website: tv.trueid.net >> GeneratedDate
echo Name: tv.trueid.net >> GeneratedDate
git add .
git commit -m "Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% ICT"
git push

cd D:\Git\epg
echo %date:~10,4%-%date:~4,2%-%date:~7,2% >> GeneratedDate

echo Script started at %time:~0,2%:%time:~3,2%:%time:~6,2% >> GeneratedDate

cd %USERPROFILE%\AppData\Local\WebGrab+Plus
del %USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml /Q
xcopy /S /I /Q /Y /F "D:\Git\epg_encrypted\gigatv.config.xml" "%USERPROFILE%\AppData\Local\WebGrab+Plus\WebGrab++.config.xml"
"C:\Program Files (x86)\WebGrab+Plus\bin\WebGrab+Plus.exe"
xcopy /S /I /Q /Y /F "%USERPROFILE%\AppData\Local\WebGrab+Plus\gigatv.3bb.co.th.epg.xml" .
tar zcvf gigatv.3bb.co.th.epg.xml.gz gigatv.3bb.co.th.epg.xml
echo Generated successfully. >> GeneratedDate
echo Website: gigatv.3bb.co.th >> GeneratedDate
echo Name: gigatv.3bb.co.th >> GeneratedDate
git add .
git commit -m "Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% ICT"
git push