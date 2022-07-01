Algoritmo "agenciadeviagem"
// Disciplina   : Lógica de Programção
// Professor   : Denis Cople
// Descrição   : Registro e consulta de clientes.
// Autor(a)    : Tamyres Pereira da Silva
// Data atual  : 29/06/2022
var
   nomes: vetor[1..5] de caractere
   destinos: vetor[1..5] de caractere
   op, nome: caractere
   i,j,p: inteiro

procedimento inicializa()
inicio

   enquanto op <> "3" faca

      Escreval ("---------------T r o p i c a l---------------")
      Escreval ("-----------------T r a v e l-----------------")
      Escreval ("---------------------------------------------")
      Escreval ("")
      Escreval ("Escolha uma opção: ")
      Escreval ("(1) Cadastrar")
      Escreval ("(2) Consultar")
      Escreval ("(3) Sair")


      leia (op)

      se op="1" entao
         limpatela

         cadastrar_passageiro()
      fimse

      se op="2" entao
         limpatela
         consultar_passageiro()
      fimse

      se op="3" entao
         para i de 1 ate 5 faca
            nomes[i]<-"x"
         fimpara
         limpatela
         Escreval("Até a próxima!")
      fimse
   fimenquanto
fimalgoritmo

fimprocedimento


procedimento cadastrar_passageiro()
inicio

   para i de 1 ate 5 faca

      se (nomes[i]="") entao
         Escreva ("Nome do passageiro: ")
         leia(nomes[i])
         Escreva ("Destino: ")
         leia (destinos[i])

         voltar_menu()
         p <- p + 1

         limpatela
      fimse
   fimpara
fimprocedimento

procedimento voltar_menu()

inicio
   Escreva ("Voltar para o menu S/N ? ")
   leia(op)
   op <- Maiusc(op)
   se op = "S" entao
      i <- i + 1
      limpatela

      inicializa()
   senao
      limpatela
      cadastrar_passageiro()
   fimse

fimprocedimento

procedimento consultar_passageiro()

inicio

   j <- 0

   Escreva (" Digite o nome do Passageiro: ")
   leia(nome)
   para i de 1 ate 5 faca

      se nome = nomes[i] entao
         Escreval( "nome: ", nomes[i])
         Escreval( "destino: ", destinos[i])

         j <- j + 1
      fimse
   fimpara
   se j = 0 entao
      Escreval(" Passageiro inexistente")
   fimse
   voltar_mennu()
   limpatela
fimprocedimento

procedimento voltar_mennu()

inicio
   Escreva(" Voltar para o menu S/N? ")
   leia(op)
   op <- Maiusc(op)
   se op = "S" entao
      i <- i + 1
      limpatela
      inicializa()
   senao
      limpatela
      consultar_passageiro()
   fimse
fimprocedimento

inicio

   inicializa()
fimalgoritmo

