*** Settings ***
Documentation    Suite criada para realizar os testes do primeiro desafio
...              de robotframework
Resource         tok_resources.robot
Test Setup       Abrir navegador
# Test Teardown    Fechar navegador


*** Test Cases ***

Caso de teste 01 - Acessar o site tokstok.com.br
    [Documentation]    Teste para abrir a home da pagina da tokstok.com.br e realizar a navegação utilizando
    ...                menu AMBIENTE
    [Tags]             Site
    Acessar a home do site Tok&Stok
    Expandir o menu ambiente
    Selecionar um ambiente
    Selecionar uma categoria
    Realizar as validações (asserts)    