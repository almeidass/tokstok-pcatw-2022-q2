*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${HOME_URL}    ${BASE_URL}/

*** Keywords ***
Acessar Home
    Go To    ${HOME_URL}