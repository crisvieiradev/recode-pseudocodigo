Algoritmo "Cadastro_Agencia"

Var

  clientes : vetor [0..1] de caracter
  documento: vetor [0..1] de caracter
  residencia: vetor [0..1] de caracter
  contato: vetor [0..1] de caracter
  motivo: vetor [0..1] de caracter
  destino: vetor [0..2] de caracter
  clienteExistente: logico
  i, j: inteiro
  opcao: inteiro
  cliente: caracter
  enter: logico

Procedimento inicializa ()
Inicio

// Sessao de Comandos, procedimento, funcoes, operadores, etc...
enquanto opcao <> 5 faca
      escreval ("********************************************")
      escreval ("* BEM-VINDO *")
      escreval ("********************************************")
      escreval ()
      escreval ("(1)Cadastrar cliente")
      escreval ("(2)Pesquisar cliente")
      escreval ("(3)Clientes cadastrados")
      escreval ("(4)Destinos disponiveis para 2022")
      escreval ("(5)Sair")
      escreva  ("Escolha a opcao desejada: ")
      leia (opcao)

   se opcao = 1 entao
   limpatela
    cadastrar_cliente ()
   fimse


   se opcao = 2 entao
   limpatela
    pesquisar_cliente ()
    fimse
    
    se opcao = 3 entao
    limpatela
    banco_de_dados ()
    fimse
    
    se opcao = 4 entao
    limpatela
    destinos_disponiveis ()
    fimse

    se opcao = 5 entao
      para i de 0 ate 1 faca
      clientes[i] <-"x"
      fimpara
      escreval ()
      escreval ()
      escreval ("Obrigado!")
      leia (enter)
      limpatela
    fimse

    
    se opcao > 5 entao
    escreval ()
    escreval ()
    escreval("Opcao invalida, escolha outra opcao entre 1 e 5.")
    leia (enter)
    limpatela
    fimse


fimenquanto
fimprocedimento


procedimento cadastrar_cliente ()
inicio


      escreval ("Cadastro do cliente:")
      escreval ()


      para i de 0 ate 1 faca
        se (clientes[i]="")entao
          escreva("Nome: ")
          leia(clientes[i])
          escreva("Documento: ")
          leia(documento[i])
          escreva("Endereco: ")
          leia(endereco[i])
          escreva("Contato: ")
          leia(contato[i])
          escreva("Motivo da viagem: ")
          leia(motivo[i])
          i <- i+1
          escreval()
          escreval ()
          escreval("+++++++++++++++++++++++++++++++++")
          escreval("+Cadastro realizado com sucesso!+")
          escreval("+++++++++++++++++++++++++++++++++")
          escreval ()
          escreval ()
          escreval("Aperte enter para voltar ao menu principal!")
          leia (enter)
          limpatela
          inicializa ()
        fimse
       fimpara
       escreval (" ---------------------------------------------------------- ")
       escreval ("|Esgotado, aperte enter para voltar ao menu pricipal|")
       escreval (" ----------------------------------------------------------")
       leia (enter)
       limpatela
       inicializa ()
fimprocedimento


procedimento banco_de_dados ()
inicio

se clientes[i] = "" entao
  escreval ()
  escreval ()
  escreval ("Nenhum cliente cadastrado!")
  escreval ()
senao
  escreval ("Clientes Cadastrados: ")
  escreval ()
  para i de 0 ate 1 faca
   escreval ()
   escreval ()
   escreval("Nome do(a) cliente: ", clientes[i])
   escreval("Documento: ", documento[i])
   escreval("Endereco: ", endereco[i])
   escreval("Contato: ", contato[i])
   escreval("Motivo da viagem: ", motivo[i])
   escreval()
   fimpara
fimse
escreval ("Aperte enter para voltar ao menu principal.")
leia (enter)
limpatela
inicializa ()
limpatela
fimprocedimento

procedimento pesquisar_cliente ()
inicio



escreva ("Digite o nome do(a) cliente que deseja pesquisar: ")
leia (cliente)
clienteExistente <- falso
para i de 0 ate 1 faca
se cliente=clientes[i] entao
clienteExistente <- verdadeiro
escreval("Nome do(a) cliente: ", clientes[i])
escreval("Documento: ", documento[i])
escreval("Endereco: ", endereco[i])
escreval("Contato: ", contato[i])
escreval("Motivo: ", motivo[i])
escreval()
escreval ("Cliente encontrado.")
escreval ()
i <- 1
escreval ("Aperte enter para voltar a tela inicial.")
leia (enter)
fimse
fimpara
se clienteExistente = falso entao
escreval ()
escreval ()
escreval ("Cliente inexistente ou opcao invalida! Favor verificar os dados!")
leia (enter)
fimse
limpatela
inicializa ()
fimprocedimento




procedimento destinos_disponiveis ()
inicio

escreva ("Digite o nome do(a) cliente")
escreva (" que deseja escolher o destino de 2022: ")
escreval ()
leia (cliente)
para i de 0 ate 1 faca
  se cliente=clientes[i] entao
   escreval("Nome do(a) cliente: ", clientes[i])
   escreval("Documento: ", documento[i])
   escreval("Endereco: ", endereco[i])
   escreval("Contato: ", contato[i])
   escreval("Motivo da viagem: ", motivo[i])
   escreval()
   escreval()
   escreval ("********************************************")
   escreval ("*      Destinos disponiveis:     *")
   escreval ("********************************************")
   escreval ()
   escreval ("(1)Pacote 5 Dias ESTADOS UNIDOS: R$ 5.000,00 por pessoa.")
   escreval ("(2)Pacote 5 Dias BRASIL: R$ 3.000,00 por pessoa.")
   escreval ("(3)Pacote 5 Dias CANADA: R$ 6.000,00 por pessoa.")
   escreval ()
   escreval  ("Escolha a opcao desejada: ")
     leia (destino[j])
     i <- i+j
   limpatela
   escreval ("")
   escreval ("Escolha realizada com sucesso!")
   escreval ("")
   escreval ("Aperte enter para voltar a tela inicial.")
   leia (enter)
   limpatela
   inicializa ()
  senao
  escreval ()
  escreval ()
  escreval ("Cliente inexistente ou opcao invalida! Favor preencha novamente!")
  leia (enter)
  limpatela
 fimse
  limpatela
  inicializa ()



fimpara
limpatela
fimprocedimento


inicio
      inicializa ()
fimalgoritmo
