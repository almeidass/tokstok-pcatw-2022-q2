*** Settings ***
Documentation    Essa suíte testa o site da Tok&Stok
Resource         desafio_1_Hugo_resources.robot
Test Setup       Abrir o navegador


Suite Setup
Suite Teardown



*** Test Cases ***
Caso de Teste - Acessar a categoria "Animais de estimação" do departamento "Acessórios"
    [Documentation]    Esse teste expande o departamento "Acessórios" do site www.tokstok.com.br,
    ...                acessa a categoria "Animais de estimação" e realiza as validações
    [Tags]             menu  departamento  categorias
    Acessar a home page do site tokstok.com.br
    Expandir o departamento "Acessórios"
    Acessar a categoria "Animais de estimação"
    Verificar se o Breadcrumb está visível
    Verificar se o título da página "Animais de estimação" está visível
    Verificar se os Filtros estão visíveis
