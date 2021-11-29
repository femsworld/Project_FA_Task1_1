*** Setting ***
Documentation     User Interface Testing
Library           SeleniumLibrary
Resource          ../Resources/Keywords.robot
Resource          ../Resources/Variables.robot


*** Test Cases ***

Search Destination
    [Template]       Search Origin and Destination and Assert Search Results
      Rovaniemi      Helsinki
      Helsnki        Rovaniemi
      Kuopio         Amsterdam
      Amsterdam      Kuopio
      Oulu           Stockholm
      Stockholm      Oulu
      Tampere        London
      London         Tampere
      Paris          Turku
      Turku          Paris






*** Keywords ***
Search Origin and Destination and Assert Search Results
    [Arguments]   ${Origin}     ${Destination}
    Navigate To Homepage
    Press Keys         ${WHERE_FROM}     ${Origin}
    Press Keys         ${WHERE_FROM}               ENTER
    click element      ${WHERE_TO}
    press keys        ${WHERE_TO}             ${Destination}
    Press Keys         ${WHERE_TO}               ENTER
    Wait until Element is Visible   ${SEARCH_BUTTON}
    Click Element     ${SEARCH_BUTTON}
    wait until element is enabled     ${SEARCH_RESULT}
    [Teardown]    Close Browser




