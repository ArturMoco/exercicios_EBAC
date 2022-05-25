            #language: pt


            Cenário de testes

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de login da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "arturmoco@gmail.com"
            E a senha "moco2022"
            Então deve exibir uma mensagem de boas vindas "Olá Artur, Faça boas compras"
            E deve ser direcionado para a página de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuario "arturfelipe123@gmail.com"
            E a senha "moco2022"
            Então deve exibir uma mensagem de alerta "Usuário inexistente"
            E ser direcionado para a página de login

            Cenário: Usário correto com senha inválida
            Quando eu digitar o usuario "arturmoco@gmail.com"
            E a senha "moco3333"
            Então deve exibir uma mensagem de alerta "Senha incorreta"
            E ser direcionado para a página de login

            Cenário: Usuário e senha inválidos
            Quando eu digitar usuario "arturfelipe123@gmail.com"
            E a senha "moco333"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
            E ser direcionado para a página de login

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso
            E ser direcionado para <pagina>

            Exemplos:
            | usuário                    | senha      | mensagem                       | pagina   |
            | "arturmoco@gmail.com"      | "moco2022" | "Olá Artur, faça boas compras" | checkout |
            | "arturfelipe123@gmail.com" | "moco2022" | "usuário inexistente"          | login    |
            | "arturfelipe123@gmail.com" | "moco3333" | "usuário ou senha inválidos"   | login    |
            | "arturmoco@gmail.com"      | "moco3333" | "senha incorreta"              | login    |



#language: en

Feature: Login page

    Feature Description
    As an EBAC-SHOP customer
    I want to login to the platform
    To view my orders

    Background: login
        Given the moment I access the EBAC-SHOP login page

    Scenario: Valid authentication
        When I enter the username "arturmoco@gmail.com"
        And password "moco2022"
        Then it should display a welcome message "Olá Artur, faça boas compras"
        And it should be redirected to the checkout page

    Scenario: User not found
        When I type the user "arturfelipe123@gmail.com"
        And the password "moco2022"
        Then it should display an alert message "No User"
        And be redirected to the login page

    Scenario: Correct user with invalid password
        When I type the user "arturmoco@gmail.com"
        And the password "moco3333"
        Then it should display an "Incorrect Password" alert message
        And be redirected to the login page

    Scenario Outline: Authenticate multiple users
        When I type <username>
        And the <password>
        Then it should display the success <message>
        And be redirected to <page>
        Examples:
            | user                       | password   | message                        | page     |
            | "arturmoco@gmail.com"      | "moco2022" | "Olá Artur, faça boas compras" | checkout |
            | "arturfelipe123@gmail.com" | "moco2022" | "usuário inexistente"          | login    |
            | "arturfelipe123@gmail.com" | "moco3333" | "usuário ou senha inválidos"   | login    |
            | "arturmoco@gmail.com"      | "moco3333" | "senha incorreta"              | login    |







