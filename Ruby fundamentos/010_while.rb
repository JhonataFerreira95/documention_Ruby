# var = 0 

# while var <= 5
#   puts var
#   var+=1
# end

puts "Digite o nome do filme: "
movie_name = gets.chomp # Captura o nome do filme e remove a quebra de linha
qtd_rating = 0 # Contador de avaliações
total_rating = 0 # Soma total das notas
rating = 0 # Armazena a nota atual
average = 0 # Média das avaliações

# Loop para coletar notas até que o usuário insira -1

while rating != -1
  puts "Informe a nota do filme: "
  rating = gets.chomp.to_f # Lê a nota do usuário e converte para float
  
  if rating != -1 # Apenas processa notas válidas
    total_rating += rating
    qtd_rating += 1
    average = total_rating / qtd_rating # Atualiza a média
  end
end

# Exibe a média formatada com duas casas decimais

puts "Média das avaliações do filme #{movie_name} é %.2f" %average

=begin
  
Código Explicado:

1. Entrada do nome do filme

puts "Digite o nome do filme: "
movie_name = gets.chomp
O programa solicita ao usuário que insira o nome do filme.
O método gets captura a entrada do usuário como uma string e chomp remove a quebra de linha \n no final.

2. Inicialização de variáveis

qtd_rating = 0
total_rating = 0
rating = 0
average = 0
qtd_rating: Contará o número de avaliações.
total_rating: Somará todas as notas fornecidas.
rating: Armazena a nota atual inserida pelo usuário.
average: Guardará a média das notas.

3. Loop para receber avaliações

while rating != -1
  puts "Informe a nota do filme: "
  rating = gets.chomp.to_f
O loop while continua solicitando notas enquanto o valor inserido pelo usuário não for -1.
O método gets.chomp.to_f converte a entrada do usuário para um número de ponto flutuante.

4. Cálculo das avaliações

  if rating != -1
    total_rating += rating
    qtd_rating += 1
    average = total_rating / qtd_rating
  end
Se a nota não for -1, ela é adicionada ao total (total_rating) e o contador de avaliações (qtd_rating) é incrementado.
A média é recalculada dividindo o total pelo número de avaliações.

5. Finalização do loop

Quando o usuário insere -1, o programa sai do loop, sem incluir essa entrada nos cálculos.

6. Exibição da média

puts "Média das avaliações do filme #{movie_name} é %.2f" %average
O programa exibe o nome do filme e a média das avaliações formatada com duas casas decimais.
Exemplo de Execução
Entrada:
arduino
Copiar código
Digite o nome do filme: 
O Poderoso Chefão
Informe a nota do filme: 
5
Informe a nota do filme: 
4.5
Informe a nota do filme: 
-1
Saída:
arduino
Média das avaliações do filme O Poderoso Chefão é 4.75

Resumo:
O código solicita o nome de um filme e permite que o usuário insira várias notas.
As notas são somadas e a média é calculada dinamicamente.
O loop termina quando o usuário digita -1, e o programa exibe a média final formatada.

=end
