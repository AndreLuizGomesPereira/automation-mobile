*** Settings ***
Documentation       Elementos e ações da tela de Login

Library             AppiumLibrary


*** Variables ***
${API_IP}       192.168.1.82


*** Keywords ***
Do Login
    Wait Until Element Is Visible    //*[@resource-id="apiIp"]
    Input Text    //*[@resource-id="apiIp"]    ${API_IP}
    Click Element    xpath=//*[@resource-id="signInButton"]
