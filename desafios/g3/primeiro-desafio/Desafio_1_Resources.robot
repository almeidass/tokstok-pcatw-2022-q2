*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                 https://www.tokstok.com.br

*** Keywords ***
Abrir o navegador
    Open Browser       browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

# Gherkin Steps
Dado que estou na home page da Tokstok.com.br
    Go To                            url=${URL}
    Wait Until Element Is Visible    locator=//a[@class='vtex-store-components-3-x-logoLink']

Quando acessar expandir um departamento no menu
    Mouse Over                       locator=//div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--headerDepartmentItem vtex-menu-2-x-styledLinkContent--headerDepartmentItemForniture vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_moveis flex justify-between nowrap']
    
Então as categorias devem ser exibidas na página
    Wait Until Element Is Visible    locator=//div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--subMenuItems vtex-menu-2-x-styledLinkContent--subMenuFirstLevel vtex-menu-2-x-styledLinkContent--subMenuFornitureItems vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_mesas flex justify-between nowrap']
    
E deve ser possível acessar uma categoria
    Click Element                    locator=//div[@class='vtex-menu-2-x-styledLinkContent vtex-menu-2-x-styledLinkContent--subMenuItems vtex-menu-2-x-styledLinkContent--subMenuFirstLevel vtex-menu-2-x-styledLinkContent--subMenuFornitureItems vtex-menu-2-x-styledLinkContent--gtmGeneralEvents vtex-menu-2-x-styledLinkContent--gtm-event-category_tokstok__geral vtex-menu-2-x-styledLinkContent--gtm-event-action_clique__menu-superior vtex-menu-2-x-styledLinkContent--gtm-event-label_mesas flex justify-between nowrap']

E deve ser possível vizualizar o breadcrumb
    Wait Until Element Is Visible    locator=//span[contains(text(),'mesas')]
    
E deve ser possível visualizar o título
    Wait Until Element Is Visible    locator=//h1[@class='tokstoksponsorio-custom-filter-navigator-0-x-galleryTitleCustom t-heading-1']

E deve ser possível vizualizar os filtros
    Wait Until Element Is Visible    locator=//body[contains(@class,'bg-base')]/div[contains(@class,'render-container render-route-store-search-category')]/div[contains(@class,'render-provider')]/div[contains(@class,'vtex-store__template bg-base')]/div[contains(@class,'flex flex-column min-vh-100 w-100')]/div/div[contains(@class,'flex flex-grow-1 w-100 flex-column')]/div/section[contains(@class,'vtex-store-components-3-x-container ph3 ph5-m ph2-xl mw9 center vtex-search-result-3-x-searchResultContainer vtex-search-result-3-x-searchResultContainer--search-page pt3-m pt5-l')]/div[contains(@class,'relative justify-center flex')]/div[contains(@class,'vtex-search-result-3-x-loadingOverlay vtex-search-result-3-x-loadingOverlay--search-page w-100 flex flex-column flex-grow-1 vtex-search-result-3-x-container--layout vtex-search-result-3-x-container--layout--search-page')]/div[contains(@class,'vtex-flex-layout-0-x-flexRow')]/section[contains(@class,'vtex-store-components-3-x-container ph3 ph5-m ph2-xl mw9 center')]/div[contains(@class,'vtex-flex-layout-0-x-flexRowContent items-stretch w-100')]/div[contains(@class,'flex')]/div[contains(@class,'tokstoksponsorio-custom-filter-navigator-0-x-filters--layout')]/div[@class='tokstoksponsorio-custom-filter-navigator-0-x-wrapper']/div[@class='tokstoksponsorio-custom-filter-navigator-0-x-container z-999 relative left-0 right-0']/div[contains(@class,'tokstoksponsorio-custom-filter-navigator-0-x-filtersWrapper')]/div[@class='tokstoksponsorio-custom-filter-navigator-0-x-filter-container tokstoksponsorio-custom-filter-navigator-0-x-filter-container--is-show-more']/div[1]/div[1]
