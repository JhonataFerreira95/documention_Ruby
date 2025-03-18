# Alternativa 1

def search(key) # Criação do metódo com parâmentro.
  Dir.glob("../Manipulação de arquivos/Text/*.txt") do |file| # Ussamos o <Dir.glob> para abrir o diretõrio, com <do> iniciamos um bloco que passamos a nossa variãvel entre os pipes <|file>.
    f = File.open(file) # Criamos a variável <f> e passamos <File.open> para abrir o arquivo que incializado no bloco acima com a variável <|file|>.
    f.each_with_index do |line, index| # Vamos percorrer o arquivo com <each>, utilizamos o <do> para criar um bloco para ler o arquivo com <|line, index>.
      if line.include?(key) # Condição para se na minha <line> estiver incluso a <key> ele fará uma leitura na linha e vai retornar <file> e <index>
        return file, index 
      end
    end
  f.close # Para fecha nosso arquivo.
  end
end

# Alternativa 1 para vizualizar o programa em execução, bem básica.

puts "Busca palavras em arquivos!"
puts "Digite uma palavra a ser procurada: "
key = gets.chomp

filename, linenumber = search(key) # Aqui passamos a variável ( <filname> == <file> linha 8) que representada na linha 8 e o mesmo vale para ( <linenumber> == <index> linha 8).
puts "Arquivo: #{filename} Linha: #{linenumber + 1}" # Como começamos a contagem do indice 0, adicionamos <+1> para começa na linha 1.


# Alternativa 2

def search(key) # Criamos nosso metódo com o parâmetro <key>.
  result = {} # Criação do hash.
  Dir.glob("../Manipulação de arquivos/Text/*.txt") do |file| # Ussamos o <Dir.glob> para abrir o diretõrio, com <do> iniciamos um bloco que passamos a nossa variãvel entre os pipes <|file>.
    f = File.open(file) # Criamos a variável <f> e passamos <File.open> para abrir o arquivo que incializado no bloco acima com a variável <|file|>.
    f.each_with_index do |line, index| # Vamos percorrer o arquivo com <each>, utilizamos o <do> para criar um bloco para ler o arquivo com <|line, index>.
      if line.include?(key) # Condição para se na minha <line> estiver incluso a <key> ele fará uma leitura na linha.
        result[index + 1] = file # Retornamos o resultado o hash <result>, adicionamos o <index> no array porém, como a contagem começa no 0 utilizamos o <index + 1> para começa na linha 1 do arquivo.
      end
    end
    f.close
  end
  result
end

puts "Busca palavras em arquivos!"
puts "Digite uma palavra a ser procurada: "
key = gets.chomp.capitalize # Utilizei um <.capitalize> para que toda a primeira fileira sempre da string venha maiúscula.

result = search(key) # Nossa variável <result> recebe como padrão nosso metódo.
if result.length > 0 # Aqui utlilizamos length para ler o tamanho da variável <resutl> e compara-lá ao <0>.
  for key, value in result # Como o result é um hash, pegamos tanto a chave como o valor.
    puts "Arquivo: #{value} Linha: #{key}"
  end
else
  puts "Não encontrado!" # Meio óbvio o porque temos esse else.
end

