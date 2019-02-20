/**
1. Create a file to store your macros (DOSKEYs). 
  "C:\bat\macros.doskey"†

  ls=dir $* $T
  up=cd.. $T
  ex=exit $T
  np=notepad
2. Go to the registry editor. 

HKEY_LOCAL_MACHINE\Software\Microsoft\Command Processor\

3. Right-click and add a new "String Value" sub-key. Name it Autorun. 
Right-click -> New -> String Value

4. Right-click it and Modify the Value data. 

Right-click -> Modify -> Value data -> DOSKEY /MACROFILE="C:\bat\macros.doskey"
Good to go.

note when used as .doskey no need to explicitly mention each command is doskey
**/

doskey 127=start c:\software\putty\putty.exe -ssh  10.20.172.XXX -l clstradm -pw XXXXXX 
doskey 129=start c:\software\putty\putty.exe -ssh  10.20.172.XXX -l clstradm -pw XXXXXX 
doskey wsedit=gvim ws.bat
doskey git=cd $1 $t C:\PROGRA~2\Git\bin\sh.exe --login -i
doskey eclipse=start c:\software\eclipse\eclipse.exe
doskey sqldeveloper=start C:\software\sqldeveloper\sqldeveloper.exe
doskey ldap=start "C:\software\ApacheDirectoryStudio-2.0.0.v20161101-M12-win32.win32.x86_64\ApacheDirectoryStudio\ApacheDirectoryStudio.exe"
doskey anypoint3.7=start C:\software\AnypointStudio\AnypointStudio.exe
doskey robomongo=start C:\software\robomongo-0.9.0-windows-x86_64-0786489\Robomongo.exe
doskey cpt127=\software\putty\pscp $1\$2 xxxxxxx@10.20.172.XXX:/data/logs/bpt/in/$2
doskey cpf127=\software\putty\pscp xxxxxxxx@10.20.172.XXX:/data/logs/bpt/in/$1 $1
doskey gvim=gvim -p --remote-tab-silent $1 $*
doskey ..=..\$*

:::Linux
doskey ls=dir $*
doskey clear=cls
doskey cp=copy $*
doskey rm=del $*

doskey oo=explorer $* 
doskey ccd=mkdir $1 $t cd $1
doskey ff=dir /B /S $B findstr $1

doskey mvnnexus=copy \Users\xxxxxxxx\.m2\settings_nexus.xml \Users\xxxxxx\.m2\settings.xml
doskey mvnproxy=copy \Users\xxxxxxxx\.m2\settings_proxy.xml \Users\xxxxxx\.m2\settings.xml
doskey xl=mode 168,10
doskey xxl=mode 168,2000

