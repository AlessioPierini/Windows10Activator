@Echo off
@Mode 48,15
@Title %~n0
Batbox /h 0

 :Loop
 @Title Scegli la tua opzione
 color 0b
 @mode 47,11
 Call Button  17 0 " Activator " 17 4 "  Pulizia  " 17 8 "   Exit.   " # Press
 Getinput /m %Press% /h 70

 :: Check for the pressed button 
 if %errorlevel%==1 (
mode con:cols=157 lines=20
cls 
title Attivatore Windows by V0iD
color 0a
type name.blank
slmgr.vbs -xpr
TIMEOUT /T 10
goto ATTIVAZIONE )

:ATTIVAZIONE
cls
@Mode 49,15
@color 0b
cls
Call Button  17 0 "    Home.    " 17 4 "Professional." 17 8 "  Education. " 17 12 " Enterprise. " # Press
Getinput /m %Press% /h 70

:: Check for the pressed button 
if %errorlevel%==1 (
@Mode 70,26
@TIMEOUT /T 3
echo Inject product key...
slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
@TIMEOUT /T 3
echo Setting the KMS..
slmgr.vbs /skms kms8.msguides.com
@TIMEOUT /T 3
echo Activate Windows!
slmgr.vbs /ato
TIMEOUT /T 5
goto End)

if %errorlevel%==2 (
@Mode 70,26
TIMEOUT /T 3
echo Inject product key...
slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
TIMEOUT /T 3
echo Setting the KMS..
slmgr.vbs /skms kms8.msguides.com
TIMEOUT /T 3
echo Activate Windows!
slmgr.vbs /ato
goto End)


if %errorlevel%==3 (
@Mode 70,26
TIMEOUT /T 3
echo Inject product key...
slmgr.vbs /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
TIMEOUT /T 3
echo Setting the KMS..
slmgr.vbs /skms kms8.msguides.com
TIMEOUT /T 3
echo Activate Windows!
slmgr.vbs /ato
goto End)


if %errorlevel%==4 (
@Mode 70,26
TIMEOUT /T 3
echo Inject product key...
slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
TIMEOUT /T 3
echo Setting the KMS..
slmgr.vbs /skms kms8.msguides.com
TIMEOUT /T 3
echo Activate Windows!
slmgr.vbs /ato
TIMEOUT /T 3
GOTO End)



:End
cls
echo Checking if Windows is activated please, wait..
TIMEOUT /T 5
slmgr.vbs -xpr
cls
goto ATTIVAZIONE













