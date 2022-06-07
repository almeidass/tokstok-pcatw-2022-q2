*** Settings ***
Documentation    Essa suite testa o site da tokstok.com.br
Resource         tokstok_resouces.robot
Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 1 - Acesso ao menu "Departamento"
    [Documentation]  Esse teste verifica o menu departamento do site da tokstok.com.br
    ...              e verifica a categoria disponiveis
    [Tags]           menu  categorias
    Dado que estou na home page da tokstok.com.br
    Quando expando a Categoria "Moveis"
    Então o texto "Mesas" deve ser exibido na categoria

Caso de Teste 2 - Escolha do submenu de "Categoria"
    [Documentation]  Esse teste verifica o acesso ao submenu de categoria
    [Tags]           categoria  subcategoria
    Dado que estou na home page da tokstok.com.br
    Quando expando a Categoria "Moveis"
    E clico na subcategoria "Mesas"
    Então o texto "Mesa" deve ser exibido na pagina
    E exibe o submenu da categoria "home > Moveis > Mesas"
    E exibe as menu "categoria | tendencia | Designer | Cor | Material | Formato"

Caso de teste 3 - 
    



    