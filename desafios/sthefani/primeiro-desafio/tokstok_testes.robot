*** Settings ***
Documentation    Essa suite testa o site da tokstok.com.br
Resource         tokstok_resources.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 1 - Acesso ao menu "Departamento"
    [Documentation]  Esse teste verifica o menu departamento do site da tokstok.com.br
    ...              e verifica a categoria disponiveis
    [Tags]           categorias
    Acessar a home page da tokstok.com.br
    Expandir a Categoria "Moveis"
    Validar o texto "Mesas" exibido na categoria

Caso de Teste 2 - Escolha do submenu de "Categoria"
    [Documentation]  Esse teste verifica o acesso ao submenu de categoria
    [Tags]           subcategoria
    Acessar a home page da tokstok.com.br
    Expandir a Categoria "Moveis"
    Acionar a subcategoria "Mesas"
    Validar o texto "Mesa" exibido na pagina
    Validar o submenu da categoria "home > moveis > mesas"
    Validar o menu filtros "Categorias | Tendência | Características | Designer | Situação | Lugares | Tamanho"
