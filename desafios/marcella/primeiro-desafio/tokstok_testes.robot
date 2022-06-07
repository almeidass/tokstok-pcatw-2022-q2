*** Settings ***
Documentation    Essa suíte testa o site da Tokstok.com.br
Resource    tokstok_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste - Acessar o site da Tokstok e realizar validações
    [Documentation]    Acessar o site da Tok&Stok, expandir um departamento no menu, acessar uma categoria e realizar as validações (asserts).
    [Tags]             menu    categoria
    Acessar a página da Tok&Stok
    Expandir o departamento Acessórios no Menu
    Acessar a categoria "artesanato"
    Verificar se o Breadcrumb está visível
    Verificar se o título está visível
    Verificar se os filtros estão visíveis

