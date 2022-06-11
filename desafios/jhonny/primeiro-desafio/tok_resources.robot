*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}                      chrome
${URL}                          https://www.tokstok.com.br/
${BREADCRUMB}                   //span[contains(.,'Home')]
${TITULO}                       //h1[contains(@class,'tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1')]
${FILTROS}                      //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more']


*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER} 
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Dado que acesso home page do site tokstok.com.br
    Go To    url=${URL}
    Title Should Be    title=Tok&Stok | Loja de Móveis, Decorações e Acessórios

Quando expando um departamento no menu
    Wait Until Element Is Visible    locator=//div[contains(@class,'moveis flex justify-between nowrap')]
    Click Element    locator=//div[contains(@class,'moveis flex justify-between nowrap')]

E acesso uma categoria
    Wait Until Element Is Visible    locator=//div[contains(@class,'espelhos flex justify-between nowrap')]
    Click Element    locator=//div[contains(@class,'espelhos flex justify-between nowrap')]

Então o breadcrumb deve estar visível
    Wait Until Element Is Visible    locator=${BREADCRUMB}

E o titulo deve estar visível
    Wait Until Element Is Visible    locator=${TITULO}  

E os filtros devem estar visíveis
    Wait Until Element Is Visible    locator=${FILTROS}
    


