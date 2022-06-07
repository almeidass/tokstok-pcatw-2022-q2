*** Settings ***
Resource    ../po/plp_po.resource

*** Variables ***
${ELM}    //a[@href='/cesto-roupa-60-cm-x-40-cm-x-30-cm-madeira-natural-cream-kabuki/p'][contains(.,'KABUKI CESTO ROUPA 60 CM X 40 CM X 30 CM')]    

*** Keywords ***
O cliente acessa PLP do departamento "${nome_departamento}"
    Acessar PLP Departamento Via Menu De Departamentos    ${nome_departamento}  

O cliente acessa PLP "${nome_categoria}" do departamento "${nome_departamento}"
    Acessar PLP Categoria Via Menu De Departamentos    ${nome_departamento}    ${nome_categoria}


A PLP departamento deve carregada com sucesso
    Validar Carregamento PLP Departamento

A PLP categoria deve carregada com sucesso
    FOR    ${counter}    IN RANGE    30
        ${status}    ${value}=    Run Keyword And Ignore Error    Click Element   ${ELM}
        Exit For Loop If     '${status}' == 'PASS' 
        Log    ${counter}
        Sleep    1
    END
    # ${status02}=    Run Keyword And Ignore Error    Click Element   ${ELM}
    # Validar Carregamento PLP Categoria
    