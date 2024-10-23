*** Settings ***
Documentation       Testes de Login

Resource            ../resources/base.resource
Resource            ../resources/screens/login.resource

Test Setup          Start Session
Test Teardown       Finish Session


*** Test Cases ***
Deve Logar com sucesso
    Do Login
    Wait Until Page Contains    Minhas tarefas    5
