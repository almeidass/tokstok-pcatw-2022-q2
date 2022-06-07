*** Settings ***
Resource         ../resources/TokStok_Resources.robot
Resource         ../resources/BDDpt-br.robot
Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário 01: Acessar uma categoria
    Dado que esteja no site da Tok&Stok
    Quando expando o menu de categorias
    E clico na subcategoria
    Então verifico se o titulo da categoria está sendo exibido corretamente
    E verifico se o Breadcrumb está sendo exibido corretamente
    E verifico se os filtros estao sendo exibidos corretamente

