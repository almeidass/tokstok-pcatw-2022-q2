*** Settings *** 
Documentation    Essa suite testa o site da Tokstok
Resource    Desafio_1_tok&stok_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador 


*** Test Cases ***
Expandir um departamento no site da tok&stok
    [Documentation]    Esse teste acessa o site da tok&stok e expandi um departamento no menu
    [Tags]    Expandir_Departamento
    Acessar a home page do site da tok&stok
    Expandir um Departamento no Menu 

Acessar uma categoria
    [Documentation]    Esse teste acessa o site da tok&stok e acessa uma categoria
    ...                Esse teste valida se exibe as breadcrumbs, titulo e filtros
    [Tags]    Acessa_Categoria_Departamento
    Acessar uma Categoria
    Validar se as breadcrumbs estão visiveis 
    Validar se o titulo esta visivel 
    Validar se os filtros estão visiveis 