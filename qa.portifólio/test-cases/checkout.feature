#language: pt

Funcionalidade: Checkout
  Como usuário logado na aplicação
  Quero finalizar minha compra
  Para receber os produtos selecionados

  Contexto:
    Dado que o usuário está logado com "standard_user" e "secret_sauce"
    E adicionou o produto "Sauce Labs Backpack" ao carrinho
    E acessou o carrinho

  Cenário: Realizar compra com sucesso
    Quando clica no botão "Checkout"
    E preenche o campo "First Name" com "Claudio"
    E preenche o campo "Last Name" com "Marcel"
    E preenche o campo "Zip/Postal Code" com "01310-100"
    E clica no botão "Continue"
    Então deve ser redirecionado para a página de overview
    E deve visualizar o resumo do pedido com o produto adicionado

  Cenário: Finalizar compra na página de overview
    Dado que o usuário está na página de overview após preencher os dados de entrega
    Quando clica no botão "Finish"
    Então deve visualizar a mensagem "Thank you for your order!"

  Cenário: Tentar avançar no checkout sem preencher o First Name
    Quando clica no botão "Checkout"
    E não preenche o campo "First Name"
    E preenche o campo "Last Name" com "Marcel"
    E preenche o campo "Zip/Postal Code" com "01310-100"
    E clica no botão "Continue"
    Então deve visualizar a mensagem de erro "Error: First Name is required"

  Cenário: Tentar avançar no checkout sem preencher o Last Name
    Quando clica no botão "Checkout"
    E preenche o campo "First Name" com "Claudio"
    E não preenche o campo "Last Name"
    E preenche o campo "Zip/Postal Code" com "01310-100"
    E clica no botão "Continue"
    Então deve visualizar a mensagem de erro "Error: Last Name is required"

  Cenário: Tentar avançar no checkout sem preencher o Zip/Postal Code
    Quando clica no botão "Checkout"
    E preenche o campo "First Name" com "Claudio"
    E preenche o campo "Last Name" com "Marcel"
    E não preenche o campo "Zip/Postal Code"
    E clica no botão "Continue"
    Então deve visualizar a mensagem de erro "Error: Postal Code is required"

  Cenário: Cancelar o checkout e retornar ao carrinho
    Quando clica no botão "Checkout"
    E clica no botão "Cancel"
    Então deve ser redirecionado para a página do carrinho

  Cenário: Tentar acessar checkout sem itens no carrinho
    Dado que o usuário está logado com "standard_user" e "secret_sauce"
    E o carrinho está vazio
    Quando acessa o carrinho
    E clica no botão "Checkout"
    Então deve ser redirecionado para a página de checkout sem itens no resumo
