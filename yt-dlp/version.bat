@echo off

cd "E:\yt-dlp"

set LOGFILE=logs\version.log

call :LOG > %LOGFILE%

:LOG

yt-dlp.exe --version

exit
