@echo off

set COUNT=%2
set NAME=%1

GOTO %NAME%

:ramlto129

SET location=xxxxxxxxxxxxxx
SET userName=xxxxxxxxxxx
SET password=xxxxxxxxxxx
SET script=sit_search.txt

(echo cd xxxx/tomcat7/webapp) > %script%
(echo mput C:\workspace\xxx-api-raml\target\sss-api-raml.war) >> %script%
(echo cd /app/xxxx-mule-standalone-3.7.0/logs) >> %script% 
(echo export search="$(grep -m 1  %2 xxxx-raml-api.log | cut -c 1-24)") >> %script%
(echo grep -A 300 $search xxx-raml-api.log ^| less -N) >> %script%

echo Executing %script% in %userName%@%location%
echo ------------------------
copy %script% con
echo ------------------------
start c:\software\putty\putty.exe -ssh %location% -l %userName% -pw %password% -t -m %script% -load "127e"

goto END



:goodmorning

echo Good Morning

set JAVA_HOME=c:\software\jdk8u91
echo set JAVA_HOME %JAVA_HOME%

set path=%JAVA_HOME%\bin;%path%;
echo add JAVA_HOME to path

set PUTTY_HOME=c:\software\putty
echo set PUTTY_HOME %PUTTY_HOME%
echo ready to go 

goto END

:buildraml


SET script=mvn-tmp.bat

(echo cd xxx-api-raml) > %script%
(echo mvn clean package) >> %script%
(echo cd target) >> %script% 
(echo dir ) >> %script%


start mvn-tmp.bat

goto END


:127

SET location=10.20.172.127
SET userName=clstradm
SET password=nox103202

ECHO Openning %location%

for /l %%i IN (1,1,%COUNT%) DO (

start c:\software\putty\putty.exe -ssh %location% -l %userName% -pw %password%

)

goto END


:129

SET location=xxxxxxxxxxx
SET userName=xxxx
SET password=xxxxxxxxx

ECHO Openning %location%

for /l %%i IN (1,1,%COUNT%) DO (

start c:\software\putty\putty.exe -ssh %location% -l %userName% -pw %password%

)

goto END


:183

SET location=xxxxxxxxxxxx
SET userName=xxxxxxxxx
SET password=xxxxxxxxxxxx

ECHO Openning %location%

for /l %%i IN (1,1,%COUNT%) DO (

start c:\software\putty\putty.exe -ssh %location% -l %userName% -pw %password%

)

goto END


:127sl

SET location=xxxxxx
SET userName=xxxxxxxxxx
SET password=xxxxxxxxxx
SET script=sit_log.txt
echo Executing %script% in %userName%@%location%
echo ------------------------
copy %script% con
echo ------------------------

start c:\software\putty\putty.exe -ssh %location% -l %userName% -pw %password% -t -m %script% -load "127l"

goto END

:127dl

SET location=xxxxxxxxxx
SET userName=xxxxxx
SET password=xxxxxxxxxx
SET script=dev_log.txt
echo Executing %script% in %userName%@%location%
echo ------------------------
copy %script% con
echo ------------------------

start c:\software\putty\putty.exe -ssh %location% -l %userName% -pw %password% -t -m %script% -load "127dl"

goto END



:127de

SET location=xxxxxxxxxxxx
SET userName=xxxxxxxxxxx
SET password=nox103202
SET script=dev_edit.txt
echo Executing %script% in %userName%@%location%
echo ------------------------
copy %script% con
echo ------------------------
start c:\software\putty\putty.exe -ssh %location% -l %userName% -pw %password% -t -m %script% -load "127e"

goto END

:127se

SET location=xxxxxxxxxxx
SET userName=xxxxxxxxx
SET password=xxxxxxxxxxxx
SET script=sit_edit.txt
echo Executing %script% in %userName%@%location%
echo ------------------------
copy %script% con
echo ------------------------
start c:\software\putty\putty.exe -ssh %location% -l %userName% -pw %password% -t -m %script% -load "127e"

goto END


:127ss

SET location=xxxxxxxxxxxx
SET userName=xxxxxxxxxx
SET password=xxxxxxxxxx
SET script=sit_search.txt

(echo #!/bin/bash) > %script%
(echo # declare STRING variable) >> %script%
(echo cd /app/xxx-mule-standalone-3.7.0/logs) >> %script% 
(echo export search="$(grep -m 1  %2 xxx-raml-api.log | cut -c 1-24)") >> %script%
(echo grep -A 300 $search xxxx-raml-api.log ^| less -N) >> %script%

echo Executing %script% in %userName%@%location%
echo ------------------------
copy %script% con
echo ------------------------
start c:\software\putty\putty.exe -ssh %location% -l %userName% -pw %password% -t -m %script% -load "127e"

goto END

:END
