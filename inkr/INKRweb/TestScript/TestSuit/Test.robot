*** Settings ***
Library     BuiltIn
Library     String
Library     Collections
Library     Zoomba.GUILibrary
Resource    ../../Resources/Configuration/Configuration.robot
Resource    ../../Resources/Data/LoginInformation.robot
Resource    ../../pom/HomeScreen/HomeScreen.robot
Resource    ../../pom/GlobalKeyWords.robot
*** Variables ***

*** Test Cases ***
Sign up INKR account
    Open Chrome     ${Dev-site}
    
    maximize browser window
    click sign in button
    Input login email   ${email}
    Click Submit button
    Input sign up password  ${password}
    Click Submit button
    Input confirm sign up password  ${password}
    Click Submit button
    Tick into agree term and policy check box
    Click sign up button
    Click Account icon
    Input title want to search  Air gear
