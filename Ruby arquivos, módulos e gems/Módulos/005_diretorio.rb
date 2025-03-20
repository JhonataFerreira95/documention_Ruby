# 1-Trabalhando com ditetórios.

# Comando para verificar o diretório atual no terminal utilizamos o <Dir.pwd> pré <puts>. 

puts Dir.pwd 

# 2-Criando diretório.

# Para criar um diretório utilizamos o <Dir.mkdir> em seguindas passamos o nome dentro de aspas duplas.

Dir.mkdir "teste"

# 3-Listando arquivos e pastas.

# Para lista todos os arquivos utilizamos o <Dir.glob> pré <puts> e passamos em aspas duplas o <*> para selecionar tudo.

puts Dir.glob "*"

# Outra alternativa para o mesmo, seria.

Dir.glob("*") do |file|
    puts file
end

# 4-Navegando entre diretórios.

# Normalmente utilizamos o <cd> para isso, mais podemos utilizar isso no ruby com <Dir.chdir> em seguinda passamos o diretório em aspas duplas <"exemplo">.

Dir.chdir "Text" # Aqui utilizamos o <Dir.chdir> para entra no diretório <"text">.
puts Dir.pwd # Ussamos o <Dir.pwd> para verificar se o comando acima deu certo!
