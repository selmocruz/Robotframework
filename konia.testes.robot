*** Settings ***
Resource         konia.resource.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Quem Somos"
    Dado que o usuário esteja na página home page da Konia.com.br
    Quando ele clicar no menu "Quem Somos"
    Então o título da página deverá ser "Quem Somos - Konia Consultoria e Informática"

Caso de testes 02 - Acesso ao menu DevSecOps
    Dado Que o usuário esteja na página home page da Konia.com.br
    Quando ele clica no menu "Casos de Sucesso"
    E Clicar em Implementação inicial de DevSecOps
    Então deverá ser exibido na tela artigos Implementação inicial de DevSecOps

Caso de testes 03 - Acesso ao menu Contatos e preencher o formulario
    Dado Que o usuário esteja na página home page da Konia.com.br
    Quando ele clica no menu "Contato"
    E preencher formulário 
    Então deverá ser exibido o formulário preenchido
    

