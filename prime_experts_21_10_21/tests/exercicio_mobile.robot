*** Settings ***
Resource   ../resource/resource.robot

*** Test Cases ***
Cenário 01: Youtube
  Abrir o aplicativo no celular 
  Buscar o canal Adrenaline
  Selecionar o canal na lista de busca
  Navegar pelo menu Playlist
  Selecionar a primeira playlist do canal
  Navegar por todos os botões da barra de menus

Cenário 02: Logar no YouTube
  Abrir o aplicativo no celular 
  Logar no aplicativo com a conta x
  Entrar no menu "Explorar"
  Usar swipe de tela até o 10 item da tela
  Clicar no vídeo

Cenário 03: Usar método Swipe na tela
  Abrir o aplicativo no celular 
  Entrar no menu "Explorar"
  Usar swipe de tela até o 10 item da tela
  Clicar no vídeo