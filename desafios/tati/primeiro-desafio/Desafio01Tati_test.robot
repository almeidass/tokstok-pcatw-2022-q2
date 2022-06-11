*** Settings ***
Documentation    Esse suíte testa o site https://www.tokstok.com.br
Resource    resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso 1 - Acessar o site da Tokstok e fazer validações
    [Documentation]    Esse teste, acessa o site da Tok, abre um menu, acessa uma das categorias e faz validações
    [Tags]    tokstok    menu
    Acessar a página da Tok&Stok
    Expandir o menu "Móveis"
    Acessar a categoria "Aparadores e buffets"
    Verificar se o Breadcrumb está visível
    Verificar se o título está visível
    Verificar se os filtros estão visíveis
