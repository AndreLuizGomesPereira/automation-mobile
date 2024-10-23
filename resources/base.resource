*** Settings ***
Documentation       Tudo deve começar por esse arquivo

Library             AppiumLibrary
Resource            ./screens/login.resource
Resource            ./screens/tasks.resource
Library             ../resources/libs/mongo.py


*** Keywords ***
Start Session
    Open Application
    ...    remote_url=http://localhost:4723
    ...    automationName=UIAutomator2
    ...    platformName=Android
    ...    deviceName=Emulator
    ...    udid=emulator-5554
    ...    autoGrantPermissions=true
    ...    app=${EXECDIR}/apps/markx.apk

Finish Session
    Capture Page Screenshot
    Close Application
