*** Settings ***
Library   SeleniumLibrary

*** Variables ***
&{pessoa}
...  nome=Leonardo
...  sobrenome=albuquerque
...  idade=18
...  cidade=Prudentopolis
...  estado=pr
...  sexo=masculino

@{frutas}
...  uva
...  morango
...  abacaxi
...  laranja
...  limão

*** Keywords ***
Imprimir informações da pessoa
  Log To Console  \n
  Log To Console  \n Dicionario da pessoa: \n
  Log To Console  \n Nome: ${pessoa.nome} \n
  Log To Console  \n Sobrenome: ${pessoa.sobrenome} \n
  Log To Console  \n Idade: ${pessoa.idade} \n
  Log To Console  \n Cidade: ${pessoa.cidade} \n
  Log To Console  \n Estado: ${pessoa.estado} \n
  Log To Console  \n Sexo: ${pessoa.sexo} \n
  Log To Console  \n

Imprimir informações das frutas
  Log To Console  \n 
  Log To Console  \n Lista das frutas: \n
  Log To Console  \n Fruta: ${frutas[0]} \n
  Log To Console  \n Fruta: ${frutas[1]} \n
  Log To Console  \n Fruta: ${frutas[2]} \n
  Log To Console  \n Fruta: ${frutas[3]} \n
  Log To Console  \n Fruta: ${frutas[4]} \n
  Log To Console  \n 
