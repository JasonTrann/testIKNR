*** Settings ***
Library     Zoomba.GUILibrary     plugins=Zoomba.Helpers.EdgePlugin
Library     OperatingSystem
Library     BuiltIn
Library     String
*** Variables ***
${timeout}  20
### Browser ###
${Chrome}=  "Chrome"
${Edge}=     "Edge"
${Firefox}=  "firefox"
*** Keywords ***
Open Chrome
    [Arguments]     ${link}
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome    chrome_options=${chrome_options}
    maximize browser window
    Go To   ${link}

Open Firefox
    [Arguments]     ${link}
    open browser    ${link}   Firefox
    Maximize Browser Window
Open Edge
    [Arguments]     ${link}
    Open browser    ${link}     browser=Edge     options=use_chromium=True
    maximize browser window
#Open test Browser
#    [Arguments]     ${link}     ${NameBrowser}
#    Run Keyword If   ${NameBrowser}== ${Chrome}   Open Chrome    ${link}
#    ...  ELSE IF   ${NameBrowser}== ${Firefox}   Open Firefox    ${link}
#    ...  ELSE    Open Edge    ${link}
Close test browser
    close all browsers
Break
    sleep  2

