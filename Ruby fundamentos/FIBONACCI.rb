puts "Digite o número: "

var = gets.chomp.to_i

result = 0
fib = 1

while result <= var
  puts  result
  result, fib = fib, fib+result
end  

=begin

O código recebe um número do usuário.
Ele começa a imprimir a sequência de Fibonacci, começando de 0 e 1.
A cada iteração, ele atualiza os dois números da sequência (um número antigo e um novo) e imprime o valor de result.
O loop termina assim que result excede o número digitado pelo usuário.

=end