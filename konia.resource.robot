*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    https://konia.com.br/
${MENU_QUEM_SOMOS}        (//a[@href='https://konia.com.br/quem-somos/'][contains(.,'Quem somos')])[1]
${TITLE_QUEM_SOMOS}              Quem somos 
${CASOS_SUCESSO}                 //a[contains(.,'Casos de sucesso')]
${Imprementacao Dev}             //a[@href='https://konia.com.br/cases/implementacao-inicial-de-devsecops/'][contains(.,'Implementação inicial de DevSecOps')]
${Imprementacao Inicial Dev}     Implementação inicial de DevSecOps
${Menu_Contato}                  //a[contains(.,'Contato')]


${BOTAO_PEQUISA}          //button[@type='submit'][contains(.,'Pesquisar')]
${CAMPO_PESQUISA_BLOG}    //input[@type='search'][contains(@id,'input-1')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window
    Sleep    3s
Fechar o navegador
    Capture Page Screenshot

Dado que o usuário esteja na página home page da Konia.com.br
    Go To    url=${URL}

Quando ele clicar no menu "Quem Somos"
    Click Element    locator=${MENU_QUEM_SOMOS}

Então o título da página deverá ser "Quem Somos - Konia Consultoria e Informática"
     Wait Until Page Contains    text=${TITLE_QUEM_SOMOS}

Quando ele clica no menu "Casos de Sucesso"
    Click Element    locator=${CASOS_SUCESSO}
    Capture Page Screenshot

E Clicar em Implementação inicial de DevSecOps
    Click Element    locator=${Imprementacao Dev}
    Capture Page Screenshot

Então deverá ser exibido na tela artigos Implementação inicial de DevSecOps
    Wait Until Page Contains    text=${Imprementacao Inicial Dev} 

Quando ele clica no menu "Contato"
    Click Element    locator=${Menu_Contato} 
    Capture Page Screenshot

 E preencher formulário 
     Input Text    //input[contains(@id,'wpforms-520-field_1')]    Selmo Cruz
     Input Text    //input[contains(@id,'wpforms-520-field_2')]    selmolc@konia.com.browser
     Input Text    //input[contains(@id,'wpforms-520-field_3')]    119999-9999
     Input Text    //textarea[contains(@class,'wpforms-field-medium')]    Realizando tests automatizados em robotframework

Então deverá ser exibido o formulário preenchido
    Page Should Contain Checkbox    locator=//input[contains(@class,'wpforms-error')]
    Select Checkbox    locator=//input[contains(@class,'wpforms-error')]
    Checkbox Should Be Selected    locator=//input[contains(@class,'wpforms-error')]
    Capture Page Screenshot

    

    




    

    

