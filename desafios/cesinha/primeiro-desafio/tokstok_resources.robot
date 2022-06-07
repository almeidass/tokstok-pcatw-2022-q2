*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.tokstok.com.br/
${BOTÃO_COOKIES}                  //button[contains(.,'Continuar e fechar')]
${LogoTok}    //img[contains(@class,'vtex-store-components-3-x-logoImage vtex-render-runtime-8-x-lazyload lazyloaded')]
${Text_Header_Livros}    Loja de Livros
${Barra_pesquisa}    twotabsearchtextbox
${Categoria_camas}    menu-link-camas
${Botao_pesquisar}    nav-search-submit-button

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window    

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Dado que estou na home page tokstok.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LogoTok}
    Wait Until Element Is Visible    locator=${BOTÃO_COOKIES}
    Click Button                     locator=${BOTÃO_COOKIES}

Quando acesso no menu a categoria "Camas e cabeceiras"
    Element Should Be Visible    Id=headerMenu
    Mouse Over    Id=headerMenu
    Sleep    5s
    Element Should Be Visible    locator=${Categoria_camas}
    Click Element    locator=${Categoria_camas}
    Sleep    5s
    Wait Until Element Is Visible    locator=//h1[contains(.,'Camas e cabeceiras')]

Então o título da página deve ficar "${TITULO}"
    Title Should Be    title=${TITULO}

E o texto "Camas e cabeceiras" deve ser exibido na página
    Element Should Be Visible    locator=//h1[contains(.,'Camas e cabeceiras')]

E o Breadcrumb deve estar vísivel
    Element Should Be Visible    locator=//a[contains(.,'Home')]
    Element Should Be Visible    locator=//a[contains(.,'moveis')]
    Element Should Be Visible    locator=//a[contains(.,'camas e cabeceiras')]

E o filtro deve estar visível na página
    Element Should Be Visible   locator=//div[@role='button'][contains(.,'Categorias')]
    Element Should Be Visible   locator=//div[@role='button'][contains(.,'Tendência')]
    Element Should Be Visible   locator=//div[@role='button'][contains(.,'Características')]
    Element Should Be Visible   locator=//div[@role='button'][contains(.,'Designer')]
    Element Should Be Visible   locator=//div[@role='button'][contains(.,'Situação')]
    Element Should Be Visible   locator=//div[@role='button'][contains(.,'Tamanho')]
    Element Should Be Visible   locator=//div[@role='button'][contains(.,'Cor')]


E acesso no menu a categoria "Camas e cabeceiras"
    Quando acesso no menu a categoria "Camas e cabeceiras"
    E o texto "Camas e cabeceiras" deve ser exibido na página
    E o Breadcrumb deve estar vísivel
    E o filtro deve estar visível na página


    
    

    
    
                              