*** Setting ***
Documentation     Variables and Keywords for Automation practice project
Library           SeleniumLibrary
Resource          ../Resources/Variables.robot

*** Keywords ***

Navigate To Homepage
    Open Browser     ${URL}    ${BROWSER}
    Maximize Browser Window
    Click element     ${I_AGREE}
    wait until element is visible       ${FLIGHTS_LOGO}


