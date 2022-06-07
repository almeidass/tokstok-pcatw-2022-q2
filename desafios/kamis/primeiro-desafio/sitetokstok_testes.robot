*** Settings ***
Documentation              Primeiro Desafio Do Plano De Capacitação Em Automação De Testes WEB 
Resource                   sitetokstok_resources.robot
Test Setup                 Abrir o navegador
Test Teardown              Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Acesso ao menu "Acessórios"
    [Documentation]        Esse cenário valida o acesso a categoria cozinha do menu de acessórios do site da Tok&Stok
    [Tags]                 menu_acessorio_cozinha
    Dado que estou na home page da Tok&Stok
    Quando o usuário expandir o menu "acessorios"
    E acessar a categoria "cozinha"
    Então o breadcrumb deve estar visível
    E o título da página deve ser "Utensílios de cozinha"
    E os filtros devem ser exibidos