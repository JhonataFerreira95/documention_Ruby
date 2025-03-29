require 'csv' # Importei o módulo

puts "Bem-vindo a agenda de contatos!"

puts "Digite o nome que deseja salvar o contato (ex:ruby)"
print "nome: "
nome = gets.chomp

puts "Digite a idade contato (ex:23)"
print "idade: "
idade = gets.chomp.to_i

puts "Digite a cidade do contato (ex:natal)"
print "cidade: "
cidade = gets.chomp 

puts "Ex de diretório/contado: caminho = C:/Users/bass1/Downloads/>contatos.csv<, aqui o nome do contado.csv"

puts "Digite o diretório para salvar seu contato e o nome da arquivo: "
caminho = gets.chomp

# Escrevendo arquivo com <CSV.open>.

CSV.open(caminho, "w") do |csv| # Aqui iniciei o caminho do arquivo e definir que utilizarei <w> que é write, sendo escrita.
    csv << ["nome", "idade", "cidade"] # Criei um cabeçalho. 
    csv << [nome, idade, cidade] # Usei o <binary left_shitf> para escrever no arquivos.
end

# Lendo arquivo com <CSV.foreach>.

CSV.foreach(caminho, headers: true) do |row| # Lendo informações do arquivos com <CSV.foreach>.
  puts "Seu contado foi salvo, o nome: #{row["nome"]}, idade: #{row["idade"]}, cidade: #{row["cidade"]}."
end

if File.exist?(caminho) # Aqui iniciei um <File.exist?> para verificar se o arquivo existe e mostra ao usuário que foi salvo com sucesso.
  puts "Seu contato foi salvo #{caminho} com sucesso!"
else # Caso não encontro, retorna um erro.
  puts "falha em criar seu contato."
end
