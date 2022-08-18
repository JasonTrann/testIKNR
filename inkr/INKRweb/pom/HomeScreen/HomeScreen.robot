*** Settings ***
Library     BuiltIn
Library     String
Library     Collections
Library     Zoomba.GUILibrary     plugins=Zoomba.Helpers.EdgePlugin
Resource  ../../Resources/Configuration/Configuration.robot
*** Variables ***
${e_sign_in_btn}   //button[@id='sign-in-button-id']
${e_enter_email_field}  //input[@placeholder='Enter your email...']
${e_password_field}     //input[@id='password']
${e_confirm_passowrd_field}     //input[@id='confirmPassword']
${e_check_box}    //input[@type='checkbox']
${e_sign_up_btn}   //span[normalize-space()='Sign Up']
${e_account_icon}    //div[@id='user-avatar-button-id']
*** Keywords ***

CLick sign in button
    wait for and click element  ${e_sign_in_btn}    timeout=${timeout}

Input login email
    [Arguments]  ${email}
    wait until page contains element  ${e_enter_email_field}  timeout=${timeout}
    input text  ${e_enter_email_field}  ${email}

Input sign up password
    [Arguments]  ${password}
    wait until page contains element  ${e_password_field}   timeout=${timeout}
    input text  ${e_password_field}   ${password}

Input confirm sign up password
    [Arguments]  ${password}
    wait until page contains element  ${e_confirm_passowrd_field}   timeout=${timeout}
    input text  ${e_confirm_passowrd_field}   ${password}

Tick into agree term and policy check box
    page should contain checkbox  ${e_check_box}    timeout=${timeout}
    select checkbox  ${e_check_box}

Click sign up button
    wait for and click element  ${e_sign_up_btn}    timeout=${timeout}

Click Account icon
    wait for and click element  ${e_account_icon}   timeout=${timeout}

Input title want to search
    [Arguments]  ${title}
    break
    wait until page contains element  //input[@type='search'][@role='combobox']   timeout=${timeout}
    click element  //input[@type='search'][@role='combobox']
    input text  //input[@type='search'][@role='combobox']   ${title}

