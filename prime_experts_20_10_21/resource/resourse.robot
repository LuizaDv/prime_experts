*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  http://automationpractice.com/
${BROWSER}  chrome

*** Keywords ***
Abrir navegador
  Open Browser  browser=${BROWSER}

Fechar navegador
  Close Browser

Acessar a página home do site Automation Practice
  Go To  ${URL}

Digitar o nome do produto "${produto}" no campo de pesquisa
  Wait Until Element Is Visible  //input[@id="search_query_top"]
  Input Text  //input[@id="search_query_top"]  ${produto}

Clicar no botão de pesquisa
  Click Button  //button[@name='submit_search']

Conferir se o produto "${produto}" foi listado no site
  Wait Until Element Is Visible  //h5//a[@title="${produto}"]

Conferir mensagem "${mensagem}"
  Wait Until Element Is Visible  //p[@class='alert alert-warning'][contains(.,'${mensagem}')]  10

Passar o mouse por cima da categoria "${categoria}" no menu principal superior de categorias
  Mouse Over  //a[contains(@title,'${categoria}')]

Clicar na sub categoria "${subcategoria}"
  Wait Until Element Is Visible  (//a[@title='${subcategoria}'])[1]
  Click Element  (//a[@title='${subcategoria}'])[1]

Conferir se os produtos da sub-categoria "${subcategoria}" foram mostrados na página
  Wait Until Element Is Visible  //span[@class='cat-name'][contains(.,'${subcategoria}')]

Clicar em "Sign in"
  Click Element  //a[@class="login"]
  Wait Until Element Is Visible  //h1[@class="page-heading"]

Informar um e-mail válido
   Input Text  //input[@name="email_create"]  luizaalbu28@gmail.com

Clicar em "Create an account"
  Click Element  //button[@id="SubmitCreate"]
  Wait Until Element Is Visible  //h3[contains(.,'Your personal information')]
  Sleep   10

Preencher os dados obrigatórios
  Input Text  //input[@id="customer_firstname"]  Luiza
  Input Text  //input[@id="customer_lastname"]  Albuquerque
  Input Text  //input[@id="passwd"]  Frederico
  Input Text  //input[@id="address1"]  Marco Pedroso Couto-26
  Input Text  //input[@id="city"]  Dois Vizinhos 
  Select From List By Label  //select[@id="id_state"]  New York
  Input Text  //input[@id="postcode"]  85660
  Select From List By Label  //select[@id="id_country"]  United States
  Input Text  //input[@id="phone_mobile"]  (46)991158860
  Input Text  //input[@id="alias"]  Marechal Candido London-1083

Submeter cadastro
  Click Element  //button[@id="submitAccount"]

Conferir se o cadastro foi efetuado com sucesso
  Wait Until Element Is Visible  //h1[contains(@class,'page-heading')]