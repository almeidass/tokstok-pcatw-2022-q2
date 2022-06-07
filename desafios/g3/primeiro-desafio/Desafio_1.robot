*** Settings ***
Documentation    Essa suite testa o site da Tokstok.com.br
Resource         Desafio_1_Resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Validações dentro de categorias
    [Documentation]    Esse teste verifica o acesso ao site da Tok&Stok, expansão de um departamento no menu,  
    ...                acesso a uma categoria e realização das validações (asserts)
    [Tags]             menus    categorias
    Dado que estou na home page da Tokstok.com.br
    Quando acessar expandir um departamento no menu
    Então as categorias devem ser exibidas na página
    E deve ser possível acessar uma categoria
    E deve ser possível vizualizar o breadcrumb
    E deve ser possível visualizar o título
    E deve ser possível vizualizar os filtros