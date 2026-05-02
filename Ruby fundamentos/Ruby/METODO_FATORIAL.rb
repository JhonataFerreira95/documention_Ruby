=begin

Crie um programa que tenha uma função fatorial() que receba dois parâmetros: 
o primeiro que indique o número a calcular e outro chamado show, 
que será um valor lógico (opcional) indicando se será mostrado ou não na tela o processo de cálculo do fatorial.

=end

$n = ' '


def fatorial(num, show=true)

  f = 1

  num.downto(1) do |c|
    if show
      print "#{c} x #{f}"
    end
    f *= c
  end

  return f

end

puts "Digite um número: "
n = gets.chomp.to_i

puts " O fatorial de #{n} é igual a #{fatorial(n)}"

