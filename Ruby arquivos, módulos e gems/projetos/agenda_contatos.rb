require 'csv' # Importei o módulo

puts "Bem-vindo a agenda de contatos!"

puts "Digite o nome que deseja salvar o contato: "
nome = [gets.chomp] # Inicializamos um array para armazena o nome do usuário.

puts "Digite a idade contato: "
idade = [gets.chomp.to_i] # Inicializamos um array para armazena a idade do usuário.

puts "Digite a cidade do contato: "
cidade = [gets.chomp] # Inicializamos um array para salvar a cidade do usuário.

puts "Ex de diretório/contado: caminho = C:/Users/bass1/Downloads/>contatos.csv<, aqui o nome do contado.csv"

puts "Digite o diretório para salvar seu contato e o nome da arquivo: "
caminho = gets.chomp

CSV.open(caminho, "w") do |csv| # Aqui iniciei o caminho do arquivo e definir que utilizarei <w> que é write, sendo escrita.
    csv << nome
    csv << idade
    csv << cidade
end

if File.exist?(caminho) # Aqui iniciei um <File.exist?> para verificar se o arquivo existe e mostra ao usuário que foi salvo com sucesso.
  puts "Seu contato foi salvo #{caminho} com sucesso!"
else # Caso não encontro, retorna um erro.
  puts "falha em criar seu contato."
end
