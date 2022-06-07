*** Settings ***
Documentation    Essa suíte testa o site da tokstok.com.br
Resource        tokstok_resources.robot
Test Setup       Abrir o navegador
                 
Test Teardown    Fechar o navegador



*** Test Cases ***
Desafio 01 - Acesso a a caategoria do menu "Camas e cabeceiras"
    [Documentation]    Esse teste verifica o menu "Camas e cabeceiras" no site de tokstok.com.br
    ...                 e verifica a exibição do título, breadcrumb e filtros.
    [Tags]    menus
        Dado que estou na home page tokstok.com.br
        Quando acesso no menu a categoria "Camas e cabeceiras"
        Então o título da página deve ficar "Cama - Redecore com os móveis Tok&Stok"
        E o texto "Camas e cabeceiras" deve ser exibido na página
        E o Breadcrumb deve estar vísivel
        E o filtro deve estar visível na página


# Desafio Final - Adicionando produto ao carrinho ***EM CONSTRUÇÂO***
#     [Documentation]    Esse teste verifica a navegação pelo menu
#     ...                 e adiciona um produto ao carrinho
#     [Tags]    Cart
#         Dado que estou na home page tokstok.com.br
#         E acesso no menu a categoria "Camas e cabeceiras"
#         E acesso a pdp de um produto
#         Quando adiciono um produto ao carrinho
#         Então válido que o produto foi adicionado com sucesso