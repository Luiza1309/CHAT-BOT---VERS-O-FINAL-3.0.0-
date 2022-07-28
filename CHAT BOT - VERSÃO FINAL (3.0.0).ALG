Algoritmo "CHAT BOT - VERSÃO FINAL (3.0)"

Var
   setor: inteiro          // *
   duvida: inteiro         // *
   atendimento: inteiro    // *
   verificacao: inteiro    // *
   separador: caractere               // *
   setorTexto, mensagens: caractere   // *
   login, senha: caractere            // *
   primeira_duvida: caractere         // *
   segunda_duvida: caractere          // *
   terceira_duvida: caractere         // *
   quarta_duvida: caractere           // *
   DuvidaUsuario: caractere           // *
   ordem: inteiro                     // *
   textoInvalido: caractere

// Procedimentos do Sistema:

// Procedimento para apresentar e pedir o Login do usuário
procedimento Login()
Inicio
      // Declaração das boas vindas.
        Escreval (separador)
        Escreval ("Seja bem vindo(a) ao chat virtual do banco!")
        Escreval ("Aqui você poderá tirar suas dúvidas relacionadas aos setores: ")
        Escreval ("- Financeiro, Transferências e Pagar Contas")

      // Login do usuário
        Escreval (separador)
        Escreval ("Digite seu login:")
        Leia (login)
        Escreval ("")
        Escreval ("Digite a sua senha:")
        Leia (senha)
        limpatela
        EnviarLogin()
fimprocedimento

// Procedimento para enviar o Login do usuário
procedimento EnviarLogin()
Inicio
    Escreval (separador)
    Escreval ("Você entrou com o usuário:")
    Escreval ("- Login: ", login)
    Escreval ("- Senha: ", senha)
    Escreval (separador)
fimprocedimento

// Procedimento para ler os setores e definir-los pelo usuário
procedimento LerSetor()
Inicio
    limpatela
    EnviarLogin()
    Escreval ()
    Escreval (separador)
    Escreval ("Selecione o setor relacionado à sua dúvida: ")
    Escreval ("1) Financeiro")
    Escreval ("2) Transferências")
    Escreval ("3) Pagar Contas")
    Escreval (separador)
    Escreval ("Digite o número correspondente ao setor.")
    Leia(setor)
    setorTexto <- EscolherSetor(setor)
    duvida()
fimprocedimento

// Procedimento para ler e enviar as dúvidas permitidas ao usuário
procedimento duvida()
Inicio
    Escreval (separador)
    Escreval ("   Você está no setor", setorTexto,"!")
    Escreval ("")
    Escreval ("Selecione o número correspondente à sua dúvida: ")
    Escreval (primeira_duvida)
    Escreval (segunda_duvida)
    Escreval (terceira_duvida)
    Escreval (quarta_duvida)
    Escreval ()
    Escreval ("10) Voltar à seleção de setores.")
    Escreval (separador)
    Leia(duvida)
    mensagens <- EscolherDuvida(duvida)
fimprocedimento

// Procedimento para exibir as resoluções ao usuário
procedimento Resolucoes()
Inicio
      LerSetor()
      Escreval (separador)
      se duvida = 4 entao
         Escreval ("Sua dúvida: ", mensagens)
         Escreval ("Não há respostas para a sua dúvida...")
      senao
         Escreval (mensagens)
      fimse
      Escreval (separador)
fimprocedimento

// Procedimento final, feito para o usuário dar sua avaliação do sistema
procedimento AtendimentoMsg()
Inicio
    Resolucoes()
    Escreval ("Dê uma avaliação ao atendimento:")
    Escreval ("1- Atendimento péssimo;")
    Escreval ("2- Atendimento ruim;")
    Escreval ("3- Atendimento intermediário;")
    Escreval ("4- Atendimento bom;")
    Escreval ("5- Atendimento excelente.")
    Escreval (separador)
    para atendimento de 1 ate ordem passo 1 faca // Corte de erros na exibição
         Escreval ()
    fimpara
    Leia (atendimento)
    mensagens <- AvaliacaoCliente(atendimento)
fimprocedimento


// Procedimento para verificações de digitos incorretos
procedimento Invalido()
Inicio
      Escreval (separador)
      Escreval ("   Algo invalido foi digitado...")
      Escreval ()
      se textoInvalido = " à sua duvida!" entao
         Escreval ("   Você está no setor", setorTexto,"!")
         Escreval (separador)
         Escreval ("Digite o número correspondente", textoInvalido)
         Escreval (primeira_duvida)
         Escreval (segunda_duvida)
         Escreval (terceira_duvida)
         Escreval (quarta_duvida)
         Escreval ()
         Escreval ("10) Voltar à seleção de setores.")
         fimse
      se textoInvalido = " ao setor!" entao
         Escreval ("Digite o número correspondente", textoInvalido)
         Escreval ("1) Financeiro")
         Escreval ("2) Transferências")
         Escreval ("3) Pagar Contas")
         fimse
      se textoInvalido = " ao atendimento!" entao
         Escreval ("Digite o número correspondente", textoInvalido)
         Escreval ("1- Atendimento péssimo;")
         Escreval ("2- Atendimento ruim;")
         Escreval ("3- Atendimento intermediário;")
         Escreval ("4- Atendimento bom;")
         Escreval ("5- Atendimento excelente.")
         fimse
      Escreval (separador)
fimprocedimento


// Funções do Sistema:


// Função para definir o setor pelo usuário
funcao EscolherSetor(setor: inteiro): caractere  // Função para escolher setores
Inicio
    limpatela
    textoInvalido <- " ao setor!"
    Escolha (setor)
    Caso 1
         setorTexto <- " Financeiro"
         primeira_duvida <- "1) Como pedir um empréstimo;"
         segunda_duvida <- "2) Como abrir uma conta poupança;"
         terceira_duvida <- "3) Como abrir um seguro de vida;"
         quarta_duvida <- "4) Outra dúvida?"
    Caso 2
         setorTexto <- " de Transferências"
         primeira_duvida <- "1) Como fazer uma transferência via PIX;"
         segunda_duvida <- "2) Opções de depósitos na sua conta;"
         terceira_duvida <- "3) Como fazer um pagamento pelo whatsapp;"
         quarta_duvida <- "4) Outra dúvida?"
    Caso 3
         setorTexto <- " Pagar Contas"
         primeira_duvida <- "1) Como pagar um boleto;"
         segunda_duvida <- "2) Como fazer um débito automatico;"
         terceira_duvida <- "3) Qual a porcentagem de uma fatura atrasada;"
         quarta_duvida <- "4) Outra dúvida?"
    Outrocaso // Verificação de digitos incorretos
         repita
             limpatela
             EnviarLogin()
             Escreval()
             Invalido()
             Leia (setor)
         ate setor < 4 > 0
         setorTexto <- EscolherSetor(setor)
    Fimescolha
fimfuncao

// Função para definir a dúvida e as resoluções ao usuário
funcao EscolherDuvida(duvida: inteiro): caractere
Inicio
    textoInvalido <- " à sua duvida!"
    Escolha (duvida)
    Caso 1
         verificacao <- 1
    Caso 2
         verificacao <- 1
    Caso 3
         verificacao <- 1
    Caso 4
         verificacao <- 1
         limpatela
         Escreval (separador)
         Escreval ("Digite a sua dúvida: ")
         Escreval (separador)
         Leia (DuvidaUsuario)
         retorne (DuvidaUsuario)
    Caso 10
         LerSetor()
    Outrocaso // Verificação de digitos incorretos.
       repita
             limpatela
             Invalido()
             Leia (duvida)
             Escolha duvida
             Caso 1, 2, 3
                verificacao <- 2
             Caso 4
                verificacao <- 2
                mensagens <- EscolherDuvida(duvida)
             Caso 10
                verificacao <- 2
                LerSetor()
             fimescolha
       ate verificacao = 2
    fimescolha
    

  // Envio das respostas de suas dúvidas.
    limpatela
    ordem <- 1
    Escolha setor
    Caso 1
       Escolha duvida
       Caso 1
          retorne "R: Você pode pedir um empréstimo falando com a gerente da sua conta. Para isso, você deverá ir até a agência física."
       Caso 2
          retorne "R: Para abrir uma conta poupança você deverá ir até a agência física."
       Caso 3
          retorne "R: Basta você ser cliente do banco e ter entre 18 e 65 anos. Com a conta ativa há pelo menos 5 dias, basta clicar no ícone 'Seguro de Vida' em nosso app e fazer sua simulação!"
          ordem <- 2
       Fimescolha
    Caso 2
       Escolha duvida
       Caso 1
          retorne "R: 1- Clique na seção destinada ao Pix na tela; 2- Toque na opção “Transferir”; 3- Informe o valor a ser enviado e o destinatário; 4- Confira se as informações estão corretas; 5- Informe a sua senha e faça a transferência;"
          ordem <- 3
       Caso 2
          retorne "R: Existem várias formas de fazer deposítos em contas, independente do tipo da conta (corrente ou poupança), como: débito, crédito, saque, e afins;"
          ordem <- 2
       Caso 3
          retorne "R: Dentro das configurações do Whatsapp selecione a opção 'pagamentos'; Insira o valor que deseja transferir e o contato; O aplicativo abrirá uma confirmação de termos de uso; Após isto, uma criação de um pin será feita e, em sequência será pedido seus dados pessoais; Por afim, adicione o cartão, lembrando das especificações de tipos de pagamento e bancos aceitos."
          ordem <- 4
       Fimescolha
    Caso 3
       Escolha duvida
       Caso 1
          retorne "R: Vá até a seção destinada à pagar pagar contas; Toque na opção “Pagar Boletos”; Acesse “pagamento com código de barras” ou informe o número do seu boleto; Insira todos os dados do código de barras ou posicione o seu  celular para escaneá-lo; Confirme o pagamento e confira se ele realmente foi realizado."
          ordem <- 4
       Caso 2
          retorne "R: No menu de cartões clique em configurações; Selecione Débito Automatico em conta > Ativar débito automatico; Selecione a data para pagamento e confirme."
          ordem <- 2
       Caso 3
          retorne "R: A multa por atraso pode chegar em até 2% de juros; Ela deve ser paga se houver a partir de um dia de atraso e não é cumulativa, se você atrasou um dia ou dez dias, pagará o mesmo valor de multa."
          ordem <- 3
       Fimescolha
    fimescolha
fimfuncao

// Função da avaliação do cliente
funcao AvaliacaoCliente(atendimento: inteiro): caractere
Inicio
      textoInvalido <- " ao atendimento!"
      Escolha atendimento
      Caso 1
           retorne "'péssima'"
      Caso 2
           retorne "'ruim'"
      Caso 3
           retorne "'intermediária'"
      Caso 4
           retorne "'boa'"
      Caso 5
           retorne "'excelente'"
      Outrocaso // Verificação de digítos incorretos.
         repita
             limpatela
             Invalido()
             Leia (atendimento)
         ate atendimento < 6 > 0
         mensagens <- AvaliacaoCliente(atendimento)
    Fimescolha
fimfuncao

// ---------------------------- //

Inicio // Sessão de Comandos

      separador <- "--------------------------------------"
      Login()

      // Exibição final do atendimento.

      AtendimentoMsg()
      limpatela
      Escreval (separador)
      Escreval ("")
      Escreval ("Você deu a nota ", mensagens, " para o nosso atendimento!")
      Escreval ("")
      Escreval ("Esperamos ter esclarecido todas as suas dúvidas!")
      Escreval ("Caso haja mais dúvidas, basta entrar em contato!")
      Escreval ("")
      Escreval ("Telefone: (19) 9 99738-5047")
      Escreval ("Email: atendimento@banco.com.br")
      Escreval ("Endereço: R. Fonseca, Centro, 212")
      Escreval ("")
      Escreval (separador)

Fimalgoritmo
