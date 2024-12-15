puts "Digite o primeiro número: "
num1 = gets.chomp.to_f

puts "Digite o segundo número: "
num2 = gets.chomp.to_f

puts "Digite a operação a ser realizada (+, -, *, /)"
operação = gets.chomp

if operação == "+"
  result = num1+num2
  puts result
elsif operação == "-"
  result = num1-num2
  puts result
elsif operação == "*"
  result = num1*num2
  puts result
elsif operação == "/"
  result = num1/num2
  puts result
else
  puts "Você não digiou uma das 4 opcões listadas, tenten novamente!"
  result = 0
end

puts "Resultado da sua operação é #{'%.2f' % result}" # Aqui nos <''> vamos formatar o número de casas decimais.

=begin

Explicação:
'%.2f':

Isso é uma string de formato. O uso de %.2f significa:
%: Indica que é uma formatação.
.2: Especifica que queremos duas casas decimais.
f: Significa "float" (número com ponto flutuante).
Esse formato é usado para converter um número em um texto com duas casas decimais.
% result:

Esse operador aplica o valor da variável result à string de formato '%.2f'.
Por exemplo, se result for 123.45678, o formato '%.2f' converte o número para 123.46.
#{}:

Isso é interpolação de strings em Ruby.
O que estiver dentro de #{} será avaliado e substituído na string final.
Assim, '%.2f' % result é avaliado primeiro e, em seguida, inserido na string.
Resultado final:

A string final conterá o número formatado com exatamente duas casas decimais.

exemplo entrada/saída:

result = 123.45678
formatted = "#{'%.2f' % result}"
puts formatted

123.46


=end