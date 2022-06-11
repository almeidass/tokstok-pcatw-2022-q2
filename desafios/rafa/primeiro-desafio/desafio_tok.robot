*** Settings ***
Documentation    Essa suite abre o site da tokstok.com.br
Resource         desafio_resources.robot
Test Setup       Abrir o navegador



*** Test Cases ***
Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu  móveis do site da tokstok.com.br
    ...                e verifica a categoria Varanda e jardim
    [Tags]             menus    categorias
    Acessar a home page do site tokstok.com.br
    Entrar no menu "Móveis"
    Verificar se aparece a frase "Varanda e jardim"
    Verificar se o título da página fica "Móveis para varanda e jardim"
   