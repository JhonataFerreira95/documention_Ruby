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

puts "Busca palavras em arquivos!"
puts "Digite uma palavra a ser procurada: "
key = gets.chomp

filename, linenumber = search(key) # Aqui passamos a variável ( <filname> == <file> linha 8) que representada na linha 8 e o mesmo vale para ( <linenumber> == <index> linha 8).
puts "Arquivo: #{filename} Linha: #{linenumber}"