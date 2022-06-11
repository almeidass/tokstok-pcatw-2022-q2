*** Settings ***
Documentation    Essa suíte tem a finalidade de acessar o site da Tok&Stok e validar o acesso aos Menu e categoria
Resource         tok&stok_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador    

*** Test Cases ***
Caso de testes 01 - Acessar o site "Tok&Stok"
    [Documentation]    A finalidade desse teste é verificar o acesso a home do site da Tok&Stok
    [Tags]             Home page
    Acessar a home page do site tokstok.com.br
    Verificar se o título da página é "Tok&Stok | Loja de Móveis, Decorações e Acessórios"
    Expandir o menu "moveis" 
    Verificar se aparece a palavra "infantil"
    Verificar se o título da PLP é "Móveis infantis"
    Verificar se o Breadcrumb esta visivel
    Verificar se os Filtros estão visiveis