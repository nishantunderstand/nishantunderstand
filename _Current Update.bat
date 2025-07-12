@echo off

set "repoLocation=C:\Users\User\eclipse-workspace\nishantunderstand"

set "gitPath=C:\Program Files\Git\cmd\git.exe"
cd /d "%repoLocation%"
	if not exist "%repoLocation%\.git" (
		"%gitPath%" init
	)
	"%gitPath%" pull
	"%gitPath%" add .
		set commitMessage=LenovoBat %date% %time%
	"%gitPath%" commit -m "%commitMessage%"
	"%gitPath%" push

echo !!! End !!!


echo This window will close in 15 seconds...
timeout /t 15 >nul
exit