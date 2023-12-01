*** Comments ***
# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command


*** Settings ***
Library     AppiumLibrary


*** Test Cases ***
Test Case Name
    Open Application
    ...    http://127.0.0.1:4723
    ...    appium:automationName=uiautomator2
    ...    platformName=android
    ...    appium:platformVersion=13
    ...    appium:deviceName=emulator-5554
    ...    appium:appPackage=com.wdiodemoapp
    ...    appium:appActivity=.MainActivity
    ...    appium:app=/Users/7n100346/Documents/demo Day 1/day1.apk
    ...    appium:ensureWebviewsHavePages=${True}
    ...    appium:nativeWebScreenshot=${True}
    ...    appium:newCommandTimeout=${3600}
    ...    appium:connectHardwareKeyboard=${True}

    AppiumLibrary.Click Element    xpath=//android.widget.TextView[@text="󰍂"]
    AppiumLibrary.Wait Until Page Contains
    AppiumLibrary.Capture Page Screenshot
    AppiumLibrary.Close Application
