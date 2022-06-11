*** Settings ***
Documentation   Essa suíte testa o site da Amazon.com.br
Resource    tok_resources.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao departamento "Ambientes"
    [Documentation]    Esse teste verifica o departamento ambientes do site da tokstok.com.br
    ...                e verifica a categoria escritório
    [Tags]             menus    categoria
    Acessar a home page do site tokstok.com.br
    Expandir o departamento "Ambientes"
    Acessar a categoria "Escritorio"
    Verificar se o breadcrumb está visível
    Verificar se o título "Escritório" está visível
    Verificar se os filtros estão visíveis