#@title = "Welcome"
h1 ->
  text "Willkommen zu "
  em "der"
  text " Linksammlung"
p "Teile Deine Neuigkeiten!"

form action: '/news/create', method: 'POST', ->
  textField 'Nutzer'
  br()
  textField 'Link'
  br()
  textField 'Titel'
  br()
  button type: 'submit', 'Abschicken'
