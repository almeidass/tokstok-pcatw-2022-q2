*** Settings ***
Documentation    desafio 01 - Acessar o site da Tok&Stok, expandir um departamento no menu, acessar uma categoria e realizar as validações (asserts).




Library          SeleniumLibrary
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Variables ***
${URL}                            https://www.tokstok.com.br/
${LOGO_TOK&STOK}                  //img[contains(@data-src,'ee0b8ba758e3c21e076108ec6b13ab11.svg')]
${BOTÃO_COOKIES}                  //button[contains(.,'Continuar e fechar')]
${TÍTULO_MOVEIS_INFANTIL}         //h1[contains(.,'Móveis infantis')]
${FILTROS}                        //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more']           
${DEPARTAMENTO_MÓVEIS}            //div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemForniture vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_moveis flex justify-between nowrap'][contains(.,'Móveis')]
${CATEGORIA_INFANTIL}             //div[contains(@class,'infantil flex justify-between nowrap')]


*** Test Cases ***
Test Case - Desafio 1
    Acessar a pagina da Tok&Stok (Tok&Stok)
    Abrir o Departamento moveis no Menu
    Acessar a categoria "infantil"
    Validações a serem feitas na categoria infantil

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser  

Acessar a pagina da Tok&Stok (Tok&Stok)
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_TOK&STOK}
    Wait Until Element Is Visible    locator=${BOTÃO_COOKIES}
    Click Button                     locator=${BOTÃO_COOKIES}       
                      
Abrir o Departamento moveis no Menu
    Mouse Over    locator=${DEPARTAMENTO_MÓVEIS} 

Acessar a categoria "infantil"
    Wait Until Element Is Enabled    locator=${CATEGORIA_INFANTIL}
    Click Element                    locator=${CATEGORIA_INFANTIL} 
    
Validações a serem feitas na categoria infantil
# Breadcrumb
    Wait Until Element Is Visible    locator=${CATEGORIA_INFANTIL} 
    Element Should Be Visible    locator=${CATEGORIA_INFANTIL} 
validação Titulo
    Element Should Be Visible    locator=${TÍTULO_MOVEIS_INFANTIL} 
Listagem de Filtros
    Element Should Be Visible    locator=${TÍTULO_MOVEIS_INFANTIL} 




    