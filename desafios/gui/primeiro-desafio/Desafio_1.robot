*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Library           OperatingSystem

*** Variables ***
${LOGIN URL}      https://www.tokstok.com.br/
${BROWSER}        Chrome

*** Test Cases ***
Open Browser
    Open Browser To Page
Access Menu
    Access Menu "Móveis" "Aparadores e buffets"
Verifying Breadcrumb
    Verify Breadcrumb
Verifying Title Existence
    Verify Title
Verifying Filters
    Verify Filters Existence
    Closing Browser
*** Keywords ***
Open Browser To Page
    Create Webdriver    Chrome    executable_path=${EXECDIR}${/}bin${/}chromedriver
    Go To    ${LOGIN URL}
    # Maximize Browser Window
Closing Browser
    Close Browser
Access Menu ${CATEGORY} ${SUBCATEGORY}
    Mouse Over                       locator=//nav[contains(@class, "menuContainerNav") and contains(@class, "headerDepartmentsItems")]
    Mouse Over                       locator=//div[contains(@class, "headerDepartmentItem ") and contains(text(), ${CATEGORY})]
    Wait Until Element Is Visible    locator=//div[contains(text(), ${SUBCATEGORY})]
    Click Element                    locator=//div[contains(text(), ${SUBCATEGORY})]

Verify Breadcrumb
    Wait Until Element Is Visible    locator=//span[contains(@class, "breadcrumb") and contains(text(), "Home")]
    Element Should Be Visible        locator=//span[contains(@class, "breadcrumb") and contains(text(), "Home")]
    Capture Element Screenshot       locator=//div[contains(@class, "breadcrumbContainer")]

Verify Title
    Capture Page Screenshot 
    Capture Element Screenshot       locator=//h1

Verify Filters Existence
    Wait Until Element Is Visible    locator=//div[contains(text(),"Categorias")]
    Mouse Over    locator=//div[contains(text(),"Categorias")]
    Mouse Over    locator=//div[contains(text(),"Tendência")]
    Mouse Over    locator=//div[contains(text(),"Características")]
    Mouse Over    locator=//div[contains(text(),"Designer")]
    Mouse Over    locator=//div[contains(text(),"Situação")]
    Mouse Over    locator=//div[contains(text(),"Tamanho")]
    Mouse Over    locator=//div[contains(text(),"Cor")]
    Mouse Over    locator=//div[contains(text(),"Material")]
    Mouse Over    locator=//div[contains(text(),"Formato")]
    Capture Element Screenshot    locator=//div[contains(text(),"Categorias")]
    Capture Element Screenshot    locator=//div[contains(text(),"Tendência")]
    Capture Element Screenshot    locator=//div[contains(text(),"Características")]
    Capture Element Screenshot    locator=//div[contains(text(),"Designer")]
    Capture Element Screenshot    locator=//div[contains(text(),"Situação")]
    Capture Element Screenshot    locator=//div[contains(text(),"Tamanho")]
    Capture Element Screenshot    locator=//div[contains(text(),"Cor")]
    Capture Element Screenshot    locator=//div[contains(text(),"Material")]
    Capture Element Screenshot    locator=//div[contains(text(),"Formato")]