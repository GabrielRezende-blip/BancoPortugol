programa
{
	
	funcao inicio()
	{
		
		inteiro menu = 1
		real saldo = 0.0
		real deposito
		real saque
		cadeia extrato = " "
		cadeia control

		enquanto (menu != 0)
		{		
			escreva("---------MENU---------\n")
			escreva("1. Saque\n" )
			escreva("2. Saldo: R$", saldo, "\n")
			escreva("3. Depósito\n")
			escreva("4. Extrato\n")
			escreva("0. Sair\n")
			escreva("---------BANCO---------\n")
			escreva("Escolha um: ")
			leia (menu)
			limpa()
		
		escolha (menu)
		{
			caso 1:
			//Saque
			escreva("\nInforme o valor do saque: ")
			leia (saque)
			enquanto (saque <= 0)
			{
				escreva("\nvalor inválido! Digite novamente: ")
				leia (saque)
			}
			se (saque > saldo)
			{
				escreva("Saldo Indisponível \n")
			}
			senao
			{
				extrato = extrato + "1.Saque-------- " + saque +"\n"
				saldo = saldo - saque
				escreva("saque realizado com sucesso\n")
				
			}
			limpa()
			pare
			caso 2:
			//Saldo
			escreva("Seu saldo é ", saldo,  "\n")
			limpa()
			pare
			caso 3:
			//Depósito
			escreva("\nInforme o valor para o depósito: ")
			leia (deposito)
			enquanto (deposito <= 0)
			{
				escreva("\nvalor inválido! Digite novamente: ")
				leia (deposito)
			}
			extrato = extrato + "3.Depósito-------- " + deposito+ "\n"
			saldo = saldo + deposito
			escreva("Depósito realizado com sucesso\n")
			limpa()
			
			pare
			caso 4:
			//Extrato
			
			escreva(extrato)
			escreva("digite ENTER para continuar ")
			leia(control)
			limpa()
			
			pare
		
		}
		}
			
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1463; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */