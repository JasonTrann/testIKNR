*** Settings ***
Library     BuiltIn
Library     String
Library     Collections
Library     Zoomba.GUILibrary     plugins=Zoomba.Helpers.EdgePlugin
Resource  ../Resources/Configuration/Configuration.robot
Resource  ../pom/HomeScreen/HomeScreen.robot

*** Variables ***
${e_submit_btn}   //button[@type='submit']

*** Keywords ***
Click Submit button
    wait for and click element  ${e_submit_btn}    timeout=${timeout}