*** Settings ***
Documentation    Essa suíte testa o site da Tokstok.com.br
Resource         tok_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Desafio 01
    [Documentation]  Esse teste é referente ao desafio 01
    ...              que contempla acessar site da Tokstok > categorias > validações de exibição
    [Tags]           desafio01
    Dado que acesso home page do site tokstok.com.br
    Quando expando um departamento no menu
    E acesso uma categoria
    Então o breadcrumb deve estar visível
    E o titulo deve estar visível
    E os filtros devem estar visíveis