*** Settings ***
Library   AppiumLibrary

*** Variables ***
${REMOTE_URL}  http://localhost:4723/wd/hub
${PLATFORM_NAME}  Android
${PLATFORM_VERSION}  11.0
${DEVICE_NAME}  pixel
${APP_PACKAGE}  com.google.android.youtube
${APP_ACTIVITY}  com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}  UiAutomator2
${EMAIL}  luizaalbuquerqueprime@gmail.com
${PASSWORD}  Frederico@123

*** Keywords ***
Abrir o aplicativo no celular 
  Open Application  ${REMOTE_URL}
  ...  automationName=${AUTOMATION_NAME}
  ...  platformName=${PLATFORM_NAME}
  ...  platformVersion=${PLATFORM_VERSION}
  ...  appPackage=${APP_PACKAGE}
  ...  appActivity=${APP_ACTIVITY}
  Sleep  10

Buscar o canal ${video}
  Wait Until Element Is Visible  accessibility_id=Search  30
  Click Element  accessibility_id=Search
  Wait Until Element Is Visible  search_edit_text
  Input Text  search_edit_text  ${video}
  Press Keycode  66 

Selecionar o canal na lista de busca 
  Wait Until Element Is Visible  channel_name
  Click Element  channel_name

Selecionar a primeira playlist do canal
  Wait Until Element Is Visible  playlist_item
  ${lista_playlist}  Get Webelements  playlist_item
  Click Element  ${lista_playlist[0]}

Navegar pelo menu Playlist
  Wait Until Element Is Visible  accessibility_id=Playlists
  Click Element  accessibility_id=Playlists

Navegar por todos os botões da barra de menus
  Wait Until Element Is Visible  accessibility_id=Home
  Click Element  accessibility_id=Home
  Wait Until Element Is Visible  accessibility_id=Explore  15
  Click Element  accessibility_id=Explore
  Wait Until Element Is Visible  accessibility_id=Subscriptions  15
  Click Element  accessibility_id=Subscriptions
  Wait Until Element Is Visible  accessibility_id=Notifications  15
  Click Element  accessibility_id=Notifications
  Wait Until Element Is Visible  accessibility_id=Library  15
  Click Element  accessibility_id=Library

Logar no aplicativo com a conta x
  Wait Until Element Is Visible  accessibility_id=Account  30
  Click Element  accessibility_id=Account
  Wait Until Element Is Visible  id=button  30
  Click Element  id=button
  Wait Until Element Is Visible  id=name  30
  Click Element  id=name
  Sleep  10
  Wait Until Element Is Visible  class=android.widget.EditText  30
  Input Text  class=android.widget.EditText  ${EMAIL}
  Hide Keyboard
  Click Element  xpath=//android.webkit.WebView/android.webkit.WebView/android.view.View[1]/android.view.View[4]/android.view.View
  Sleep  10
  Wait Until Element Is Visible  class=android.widget.EditText  30
  Input Text  class=android.widget.EditText  ${SENHA}
  Hide Keyboard
  Click Element  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button

Entrar no menu "Explorar"
  Wait Until Element Is Visible  accessibility_id=Explore  15
  Click Element  accessibility_id=Explore

Usar swipe de tela até o 10 item da tela
  FOR  ${contador}  IN RANGE  0  10
    Swipe  530  1060  550  110
  END

Clicar no vídeo
  Click Element  xpath=//android.view.ViewGroup[@content-desc="VIDEO GAME HOUSE 5 - 22 minutes - Go to channel - RDCworld1 - 1.2M views - 1 day ago - play video"]/android.view.ViewGroup
