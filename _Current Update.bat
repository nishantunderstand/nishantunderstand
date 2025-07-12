@echo off

set "repoLocation=C:\Users\User\eclipse-workspace\nishantunderstand"




echo !!! Start Here !!!
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
exit