*** Settings ***
Documentation       Testes de Login

Resource            ../resources/base.resource
Library             ../resources/libs/mongo.py
Library             ../resources/libs/mongo.py

Test Setup          Start Session
Test Teardown       Finish Session


*** Test Cases ***
Deve criar uma nova tarefa
    Do Login
    ${task}    Set Variable    Criando uma nova tarefa
    Remove task from database    ${task}

    Create a new task    ${task}
    Should have task    ${task}

Deve poder remover uma tarefa indesejada
    ${task}    Set Variable    Comprar refrigerante
    Remove task from database    ${task}

    Do Login
    Create a new task    ${task}
    Should have task    ${task}
    Click Element    //*[@text="${task}"]/../..//*[@resource-id="removeTask"]
    Wait Until Element Is Visible    //android.widget.Button[@text="SIM"]
    Click Element    //android.widget.Button[@text="SIM"]
    Wait Until Page Does Not Contain    ${task}

Deve poder concluir uma tarefa
    ${task}    Set Variable    Estudar robot com appium
    Remove task from database    ${task}

    Do Login
    Create a new task    ${task}
    Should have task    ${task}

    Finish task    ${task}
