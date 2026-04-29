=begin

Faça um programa que tenha uma função chamada contador(), 
três parâmetros: início, fim e passo. Seu programa tem que realizar três contagens através da função criada:

 a) de 1 até 10, de 1 em 1  
 b) de 10 até 0, de 2 em 2
 c) uma contagem personalizada

=end

def contador(inicio, fim)

  final = 10
  
  while final >= inicio
    inicio += 1
    puts inicio
  end




end

puts contador(1)