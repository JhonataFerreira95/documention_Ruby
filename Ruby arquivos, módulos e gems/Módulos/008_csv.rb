require 'csv' # Importando o módulo.

# 1-Ecrevendo dados em CSV.

# Aqui vamos abri o arquivo, algo parecido com o <File.open>, esse aqui não precisa existir o módulo funciona, no caso da leitura, se for escrita é obrigatório que ele exista.

CSV.open("../Manipulação de arquivos/Csv/exemplo.csv", "w") do |csv| # Aqui vamos escreve utilizando o <CSV.open>, passamos o <"w"> que significa que vamos escrever, criamos um bloco com <do> o bloco vai ser como parâmetro nossa variável <|csv|>.
    csv << ["Nome", "idade", "cidade"] # Estamos escrevendo no arquivo utilizando o <Binary left_shift>.
    csv << ["Shademan", "90", "?"]
    csv << ["Rockman", "22", "NetCity"]
    csv << ["Protoman" "24", "NetCity"]
end



