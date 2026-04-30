=begin

Faça um programa que tenha uma função chamada contador(), 
três parâmetros: início, fim e passo. Seu programa tem que realizar três contagens através da função criada:

 a) de 1 até 10, de 1 em 1  
 b) de 10 até 0, de 2 em 2
 c) uma contagem personalizada

=end

def contador(inicio, fim, passe)
  
  puts "Contagem #{inicio}, de 1 em 1 até 10"

  cont = inicio

  while cont >= fim
    print "#{inicio} "
    sleep 0.5
    inicio += 1
  end

  puts"\n=-==-==-==-==-==-==-==-==-==-=" 

  puts "Contagem #{fim}, de 10 ao 0 de 2 em 2"

  while cont < fim
    print "#{fim} "
    sleep 0.5
    fim -= 2
  end

  puts"\n=-==-==-==-==-==-==-==-==-==-="

end

puts contador(-5, 40, 2)