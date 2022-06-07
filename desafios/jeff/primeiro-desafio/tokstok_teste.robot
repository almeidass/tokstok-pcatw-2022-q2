*** Settings ***
Documentation      Essa suíte testa o site da Tokstok.com.br
Resource           tokstok_resources.robot
Test Setup         Abrir o navegador
Test Teardown      Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso a Categoria do site
    [Documentation]  Esse teste tem por objetivo acessar alguma categoria do site da tokstok
    # [Tags]           menus  categoria
    Acessar a home page do site Tokstok.com.br
    Expandir o menu Móveis
    Acessar a categoria de "Espelhos"
    Verificar se o Breadcrumb está visível
    Verificar se o título "Espelho" está visível
    Verificar se os filtros estão visíveis



    