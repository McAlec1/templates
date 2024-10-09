@echo OFF
 
cd "E:\yt-dlp\"

title Enter URL to Download
 
set /p URL=URL: 
 
cls
 
title Enter File Format
 
set /p format=Audio (a) or Video (v)?: 
 
cls
 
if %format%==a yt-dlp.exe --config-location "%cd%\config\yt-dlp_a.conf" -o "%%(title)s.%%(ext)s" -w %URL% & :: Video
 
if %format%==v yt-dlp.exe --config-location "%cd%\config\yt-dlp_v.conf" -o "%%(title)s.%%(ext)s" -w %URL% & :: Audio
 
::if %format%==a @echo Audio - %URL%>>"%cd%\logs\log.txt" & :: DO NOT DELETE!!
	                                                  :: log.txt file
::if %format%==v @echo Video - %URL%>>"%cd%\logs\log.txt" & :: DO NOT DELETE!!

pause

cls

title Download more?
 
set /p more=Do you want to download more? Yes (y) or No (n): 
 
if %more%==y start run.bat
 
if %more%==y exit
 
if %more%==n goto b

if %more%==Y start yt-dlp.bat
 
if %more%==Y exit
 
if %more%==N goto b

:b

cls

exit