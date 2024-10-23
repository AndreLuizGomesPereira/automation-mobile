*** Settings ***
Documentation       Elementos e ações da tela de Tarefas

Library             AppiumLibrary


*** Keywords ***
Create a new task
    [Arguments]    ${task_name}
    Wait Until Page Contains    Minhas tarefas    5
    Input Text    //*[@resource-id="newTask"]    ${task_name}
    Click Element    //*[@resource-id="createTask"]

Should have task
    [Arguments]    ${task_name}
    Wait Until Element Is Visible    //*[@resource-id="taskText"][@text="${task_name}"]    5

Remove task by name
    [Arguments]    ${task_name}
    Click Element    //*[@txt="${task_name}"]/../..//*[@resource-id="removeTask"]
    ${confirm_button}    Set Variable    //android.widget.Button[@text="SIM"]
    Wait Until Element Is Visible    ${confirm_button}    5
    Click Element    ${confirm_button}

Finish task
    [Arguments]    ${task_name}
    Click Element    //*[@text="${task_name}"]/..
    Wait Until Element Is Visible    //*[@text="${task_name}"]/..//android.widget.ImageView    5
