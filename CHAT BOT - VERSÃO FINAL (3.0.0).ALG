Algoritmo "CHAT BOT - VERS?O FINAL (3.0)"

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

// Procedimento para apresentar e pedir o Login do usu?rio
procedimento Login()
Inicio
      // Declara??o das boas vindas.
        Escreval (separador)
        Escreval ("Seja bem vindo(a) ao chat virtual do banco!")
        Escreval ("Aqui voc? poder? tirar suas d?vidas relacionadas aos setores: ")
        Escreval ("- Financeiro, Transfer?ncias e Pagar Contas")

      // Login do usu?rio
        Escreval (separador)
        Escreval ("Digite seu login:")
        Leia (login)
        Escreval ("")
        Escreval ("Digite a sua senha:")
        Leia (senha)
        limpatela
        EnviarLogin()
fimprocedimento

// Procedimento para enviar o Login do usu?rio
procedimento EnviarLogin()
Inicio
    Escreval (separador)
    Escreval ("Voc? entrou com o usu?rio:")
    Escreval ("- Login: ", login)
    Escreval ("- Senha: ", senha)
    Escreval (separador)
fimprocedimento

// Procedimento para ler os setores e definir-los pelo usu?rio
procedimento LerSetor()
Inicio
    limpatela
    EnviarLogin()
    Escreval ()
    Escreval (separador)
    Escreval ("Selecione o setor relacionado ? sua d?vida: ")
    Escreval ("1) Financeiro")
    Escreval ("2) Transfer?ncias")
    Escreval ("3) Pagar Contas")
    Escreval (separador)
    Escreval ("Digite o n?mero correspondente ao setor.")
    Leia(setor)
    setorTexto <- EscolherSetor(setor)
    duvida()
fimprocedimento

// Procedimento para ler e enviar as d?vidas permitidas ao usu?rio
procedimento duvida()
Inicio
    Escreval (separador)
    Escreval ("   Voc? est? no setor", setorTexto,"!")
    Escreval ("")
    Escreval ("Selecione o n?mero correspondente ? sua d?vida: ")
    Escreval (primeira_duvida)
    Escreval (segunda_duvida)
    Escreval (terceira_duvida)
    Escreval (quarta_duvida)
    Escreval ()
    Escreval ("10) Voltar ? sele??o de setores.")
    Escreval (separador)
    Leia(duvida)
    mensagens <- EscolherDuvida(duvida)
fimprocedimento

// Procedimento para exibir as resolu??es ao usu?rio
procedimento Resolucoes()
Inicio
      LerSetor()
      Escreval (separador)
      se duvida = 4 entao
         Escreval ("Sua d?vida: ", mensagens)
         Escreval ("N?o h? respostas para a sua d?vida...")
      senao
         Escreval (mensagens)
      fimse
      Escreval (separador)
fimprocedimento

// Procedimento final, feito para o usu?rio dar sua avalia??o do sistema
procedimento AtendimentoMsg()
Inicio
    Resolucoes()
    Escreval ("D? uma avalia??o ao atendimento:")
    Escreval ("1- Atendimento p?ssimo;")
    Escreval ("2- Atendimento ruim;")
    Escreval ("3- Atendimento intermedi?rio;")
    Escreval ("4- Atendimento bom;")
    Escreval ("5- Atendimento excelente.")
    Escreval (separador)
    para atendimento de 1 ate ordem passo 1 faca // Corte de erros na exibi??o
         Escreval ()
    fimpara
    Leia (atendimento)
    mensagens <- AvaliacaoCliente(atendimento)
fimprocedimento


// Procedimento para verifica??es de digitos incorretos
procedimento Invalido()
Inicio
      Escreval (separador)
      Escreval ("   Algo invalido foi digitado...")
      Escreval ()
      se textoInvalido = " ? sua duvida!" entao
         Escreval ("   Voc? est? no setor", setorTexto,"!")
         Escreval (separador)
         Escreval ("Digite o n?mero correspondente", textoInvalido)
         Escreval (primeira_duvida)
         Escreval (segunda_duvida)
         Escreval (terceira_duvida)
         Escreval (quarta_duvida)
         Escreval ()
         Escreval ("10) Voltar ? sele??o de setores.")
         fimse
      se textoInvalido = " ao setor!" entao
         Escreval ("Digite o n?mero correspondente", textoInvalido)
         Escreval ("1) Financeiro")
         Escreval ("2) Transfer?ncias")
         Escreval ("3) Pagar Contas")
         fimse
      se textoInvalido = " ao atendimento!" entao
         Escreval ("Digite o n?mero correspondente", textoInvalido)
         Escreval ("1- Atendimento p?ssimo;")
         Escreval ("2- Atendimento ruim;")
         Escreval ("3- Atendimento intermedi?rio;")
         Escreval ("4- Atendimento bom;")
         Escreval ("5- Atendimento excelente.")
         fimse
      Escreval (separador)
fimprocedimento


// Fun??es do Sistema:


// Fun??o para definir o setor pelo usu?rio
funcao EscolherSetor(setor: inteiro): caractere  // Fun??o para escolher setores
Inicio
    limpatela
    textoInvalido <- " ao setor!"
    Escolha (setor)
    Caso 1
         setorTexto <- " Financeiro"
         primeira_duvida <- "1) Como pedir um empr?stimo;"
         segunda_duvida <- "2) Como abrir uma conta poupan?a;"
         terceira_duvida <- "3) Como abrir um seguro de vida;"
         quarta_duvida <- "4) Outra d?vida?"
    Caso 2
         setorTexto <- " de Transfer?ncias"
         primeira_duvida <- "1) Como fazer uma transfer?ncia via PIX;"
         segunda_duvida <- "2) Op??es de dep?sitos na sua conta;"
         terceira_duvida <- "3) Como fazer um pagamento pelo whatsapp;"
         quarta_duvida <- "4) Outra d?vida?"
    Caso 3
         setorTexto <- " Pagar Contas"
         primeira_duvida <- "1) Como pagar um boleto;"
         segunda_duvida <- "2) Como fazer um d?bito automatico;"
         terceira_duvida <- "3) Qual a porcentagem de uma fatura atrasada;"
         quarta_duvida <- "4) Outra d?vida?"
    Outrocaso // Verifica??o de digitos incorretos
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

// Fun??o para definir a d?vida e as resolu??es ao usu?rio
funcao EscolherDuvida(duvida: inteiro): caractere
Inicio
    textoInvalido <- " ? sua duvida!"
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
         Escreval ("Digite a sua d?vida: ")
         Escreval (separador)
         Leia (DuvidaUsuario)
         retorne (DuvidaUsuario)
    Caso 10
         LerSetor()
    Outrocaso // Verifica??o de digitos incorretos.
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
    

  // Envio das respostas de suas d?vidas.
    limpatela
    ordem <- 1
    Escolha setor
    Caso 1
       Escolha duvida
       Caso 1
          retorne "R: Voc? pode pedir um empr?stimo falando com a gerente da sua conta. Para isso, voc? dever? ir at? a ag?ncia f?sica."
       Caso 2
          retorne "R: Para abrir uma conta poupan?a voc? dever? ir at? a ag?ncia f?sica."
       Caso 3
          retorne "R: Basta voc? ser cliente do banco e ter entre 18 e 65 anos. Com a conta ativa h? pelo menos 5 dias, basta clicar no ?cone 'Seguro de Vida' em nosso app e fazer sua simula??o!"
          ordem <- 2
       Fimescolha
    Caso 2
       Escolha duvida
       Caso 1
          retorne "R: 1- Clique na se??o destinada ao Pix na tela; 2- Toque na op??o ?Transferir?; 3- Informe o valor a ser enviado e o destinat?rio; 4- Confira se as informa??es est?o corretas; 5- Informe a sua senha e fa?a a transfer?ncia;"
          ordem <- 3
       Caso 2
          retorne "R: Existem v?rias formas de fazer depos?tos em contas, independente do tipo da conta (corrente ou poupan?a), como: d?bito, cr?dito, saque, e afins;"
          ordem <- 2
       Caso 3
          retorne "R: Dentro das configura??es do Whatsapp selecione a op??o 'pagamentos'; Insira o valor que deseja transferir e o contato; O aplicativo abrir? uma confirma??o de termos de uso; Ap?s isto, uma cria??o de um pin ser? feita e, em sequ?ncia ser? pedido seus dados pessoais; Por afim, adicione o cart?o, lembrando das especifica??es de tipos de pagamento e bancos aceitos."
          ordem <- 4
       Fimescolha
    Caso 3
       Escolha duvida
       Caso 1
          retorne "R: V? at? a se??o destinada ? pagar pagar contas; Toque na op??o ?Pagar Boletos?; Acesse ?pagamento com c?digo de barras? ou informe o n?mero do seu boleto; Insira todos os dados do c?digo de barras ou posicione o seu  celular para escane?-lo; Confirme o pagamento e confira se ele realmente foi realizado."
          ordem <- 4
       Caso 2
          retorne "R: No menu de cart?es clique em configura??es; Selecione D?bito Automatico em conta > Ativar d?bito automatico; Selecione a data para pagamento e confirme."
          ordem <- 2
       Caso 3
          retorne "R: A multa por atraso pode chegar em at? 2% de juros; Ela deve ser paga se houver a partir de um dia de atraso e n?o ? cumulativa, se voc? atrasou um dia ou dez dias, pagar? o mesmo valor de multa."
          ordem <- 3
       Fimescolha
    fimescolha
fimfuncao

// Fun??o da avalia??o do cliente
funcao AvaliacaoCliente(atendimento: inteiro): caractere
Inicio
      textoInvalido <- " ao atendimento!"
      Escolha atendimento
      Caso 1
           retorne "'p?ssima'"
      Caso 2
           retorne "'ruim'"
      Caso 3
           retorne "'intermedi?ria'"
      Caso 4
           retorne "'boa'"
      Caso 5
           retorne "'excelente'"
      Outrocaso // Verifica??o de dig?tos incorretos.
         repita
             limpatela
             Invalido()
             Leia (atendimento)
         ate atendimento < 6 > 0
         mensagens <- AvaliacaoCliente(atendimento)
    Fimescolha
fimfuncao

// ---------------------------- //

Inicio // Sess?o de Comandos

      separador <- "--------------------------------------"
      Login()

      // Exibi??o final do atendimento.

      AtendimentoMsg()
      limpatela
      Escreval (separador)
      Escreval ("")
      Escreval ("Voc? deu a nota ", mensagens, " para o nosso atendimento!")
      Escreval ("")
      Escreval ("Esperamos ter esclarecido todas as suas d?vidas!")
      Escreval ("Caso haja mais d?vidas, basta entrar em contato!")
      Escreval ("")
      Escreval ("Telefone: (19) 9 99738-5047")
      Escreval ("Email: atendimento@banco.com.br")
      Escreval ("Endere?o: R. Fonseca, Centro, 212")
      Escreval ("")
      Escreval (separador)

Fimalgoritmo
