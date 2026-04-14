#language: pt

Funcionalidade: Login
  Como usuário da aplicação
  Quero realizar login com minhas credenciais
  Para acessar a página de produtos

  Cenário: Login com credenciais válidas
    Dado que o usuário está na página de login
    Quando preenche o campo usuário com "standard_user"
    E preenche o campo senha com "secret_sauce"
    E clica no botão de login
    Então deve ser redirecionado para a página de produtos

  Cenário: Login com senha não preenchida
    Dado que o usuário está na página de login
    Quando preenche o campo usuário com "standard_user"
    E não preenche o campo senha
    E clica no botão de login
    Então deve visualizar a mensagem de erro "Epic sadface: Password is required"

  Cenário: Login com usuário não preenchido
    Dado que o usuário está na página de login
    Quando não preenche o campo usuário
    E preenche o campo senha com "secret_sauce"
    E clica no botão de login
    Então deve visualizar a mensagem de erro "Epic sadface: Username is required"

  Cenário: Login com credenciais inválidas
    Dado que o usuário está na página de login
    Quando preenche o campo usuário com "invalid_user"
    E preenche o campo senha com "wrong_password"
    E clica no botão de login
    Então deve visualizar a mensagem de erro "Epic sadface: Username and password do not match any user in this service"

  Cenário: Login com usuário bloqueado
    Dado que o usuário está na página de login
    Quando preenche o campo usuário com "locked_out_user"
    E preenche o campo senha com "secret_sauce"
    E clica no botão de login
    Então deve visualizar a mensagem de erro "Epic sadface: Sorry, this user has been locked out"
