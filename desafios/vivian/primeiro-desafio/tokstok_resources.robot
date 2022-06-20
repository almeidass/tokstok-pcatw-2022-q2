*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${URL}                           https://www.tokstok.com.br/
${MENU}                          //nav[contains(.,'MóveisAcessóriosAmbientesInspiraçãoNovidadesPromoções')]
${DEPARTAMENTO_MOVEIS}           //div[contains(@class,'moveis flex justify-between nowrap')]
${CATEGORIA_MESA}                //*[@id="menu-link-mesas"]/div
${BREADCRUMB}                    //div[@class='tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer tokstoksponsorio-custom-breadcrumb-0-x-breadcrumbContainer--breadcrumbCatalogs'][contains(.,'Homemoveismesas')]
${TITULO_CATEGORIA}              //h1[contains(.,'Mesa')]
${FILTROS}                       //div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more']
${PRODUTO_COMODA}                //img[@src='https://tokstok.vtexassets.com/arquivos/ids/3294205-200-200?v=637771724033070000&width=200&height=200&aspect=true']
${BOTAO_COMPRAR}                 //span[contains(.,'Comprar')]       
${COMODA_ADD}                    //a[contains(.,'WINK CÔMODA 3 GAVETAS 80 CM X 40 CM')]



*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser    

Dado que eu esteja na home page do site tokstok.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU}
Quando eu acessar o departamento "Móveis"
    Mouse Over    locator=${DEPARTAMENTO_MOVEIS}
E acessar categoria "Mesas"
    Click Element    locator=${CATEGORIA_MESA}

Então eu visualizo o "Breadcrumb"
    Wait Until Element Is Visible    locator=${BREADCRUMB}

E visualizo o título "Mesa - Redecore com os móveis Tok&Stok"
    Element Should Be Visible    locator=${TITULO_CATEGORIA}
E visualizo "Filtros"
    Element Should Be Visible    locator=${FILTROS}
# E adicionar um produto "WINK CÔMODA 3 GAVETAS 80 CM X 40 CM"
#     Click Element    locator=${PRODUTO_COMODA}
#     Click Element    locator=${BOTAO_COMPRAR}

# Então eu visualizo o produto "WINK CÔMODA 3 GAVETAS 80 CM X 40 CM"



