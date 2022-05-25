            #language: pt

            Funcionalidade: Tela de cadastro - Checkout

            Descrição da Funcionalidade
            Como cliente da EBAC-SHOP
            Quero fazer e concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu queira fazer o cadastro de cliente

            Cenário: Cadastro válido
            Quando eu acessar o cadastro e "preencher" todos os itens obrigatórios marcados com "*"
            E inserir o email "arturmoco@gmail.com"
            Então ao inserir todos os dados e com email correto, aparecerá a mensagem "Cadastro concluído com sucesso"
            E serei redirecionado para a página de "checkout" para finalizar a compra.

            Cenário: Cadastro inválido
            Quando eu acessar o cadastro e "não preencher" todos os itens obrigatórios  marcados com "*"
            E inserir o email "arturmoco@gmail.com"
            Então ao não inserir todos os dados e com email correto, aparecerá a mensagem "Preencha todos os itens obrigatórios"
            E retorno a página de "cadastro"

            Cenário: Email inválido
            Quando eu acessar o cadastro e "preencher" todos os itens obrigatórios marcados com "*"
            E inserir o email "arturmoco@gcom"
            Então ao inserir todos os dados e com email incorreto, aparecerá a mensagem "Cadastro correto e email inválido"
            E retorno a página de "cadastro"

            Cenário: Cadastro incorreto e email inválido
            Quando eu acessar o cadastro e "não preencher" todos os itens obrigatórios marcados com "*"
            E inserir o email "arturmoco@gcom"
            Então ao não inserir todos os dados e com email incorreto, aparecerá a mensagem "Cadastro incorreto e email inválido"
            E retorno a página de "cadastro"

            Esquema do Cenário:
            Quando eu acessar o cadastro e preencher os itens <obrigatorios> em "*"
            E inserir o <email>
            Então aparecerá a <mensagem>
            E serei encaminhado para a <pagina>

            Exemplos:
            | Itens obrigatórios* | email               | mensagem                             | página   |
            | Preenchido *        | arturmoco@gmail.com | Cadastro concluído com sucesso       | Checkout |
            | não Preenchido *    | arturmoco@gmail.com | Preencha todos os itens obrigatórios | Cadastro |
            | Preenchido *        | arturmoco@gcom      | Cadastro correto e email inválido    | Cadastro |
            | não preenchido*     | arturmoco@gcom      | Cadastro incorreto e email inválido  | Cadastro |

#language: en

Feature: Registration screen - Checkout

    Feature Description
    As an EBAC-SHOP customer
    I want to do and complete my registration
    To complete my purchase

    Background:
        Given that I want to register a customer

    Scenario: Valid registration
        When I access the register and "fill in" all mandatory items marked with "*"
        And enter the email "arturmoco@gmail.com"
        Then when entering all the data and with the correct email, the message "Registration completed successfully" will appear.
        And I will be redirected to the "checkout" page to complete the purchase.

    Scenario: Invalid registration
        When I access the register and "do not fill in" all mandatory items marked with "*"
        And enter the email "arturmoco@gmail.com"
        Then you don't enter all the data and with the correct email, the message "Fill in all mandatory items" will appear.
        And return to the "registration" page

    Scenario: Invalid email
        When I access the register and "fill in" all mandatory items marked with "*"
        And enter the email "arturmoco@gcom"
        Then entering all the data and with incorrect email, the message "Correct registration and invalid email" will appear.
        And return to the "registration" page

    Scenario: Incorrect registration and invalid email
        When I access the register and "do not fill in" all mandatory items marked with "*"
        And enter the email "arturmoco@gcom"
        Then you don't enter all the data and with incorrect email, the message "Incorrect registration and invalid email" will appear.
        And return to the "registration" page

    Scenario Outline:
        When I access the register and fill in the <mandatory> items in "*"
        And enter the <email>
        Then the <message> will appear
        And I will be forwarded to the <page>
        Examples:
            | mandatory items* | email               | message                                  | page         |
            | Filled *         | arturmoco@gmail.com | Registration completed successfully      | Checkout     |
            | not filled in *  | arturmoco@gmail.com | Fill in all required items               | Registration |
            | Filled *         | arturmoco@gcom      | Correct registration and invalid email   | Registration |
            | not filled*      | arturmoco@gcom      | Incorrect registration and invalid email | Registration |



