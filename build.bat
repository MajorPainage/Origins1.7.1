@ECHO OFF
ECHO #############################################
ECHO #	Building DayZ Origins           	 
ECHO #############################################
PAUSE
ECHO.
ECHO Creating DEPLOY\MPMissions\dayz_1.origins.tavi.pbo
IF NOT EXIST DEPLOY\MPMissions mkdir DEPLOY\MPMissions
tools\cpbo.exe -p MPMissions\dayz_1.origins.tavi DEPLOY\MPMissions\dayz_1.origins.tavi.pbo
ECHO.
PAUSE
ECHO Creating DEPLOY\@dayz_1.origins.tavi\addons
IF NOT EXIST DEPLOY\@dayz_1.origins.tavi\addons mkdir DEPLOY\@dayz_1.origins.tavi\addons
tools\cpbo.exe -p @dayz_1.origins.tavi\addons DEPLOY\@dayz_1.origins.tavi\addons\dayz_server.pbo
ECHO.
PAUSE
ECHO.
ECHO.
ECHO DO NOT FORGET TO COPY THE CONTENT OF DEPLOY FOLDER TO YOUR ARMA2OA FOLDER
ECHO --END--
PAUSE
