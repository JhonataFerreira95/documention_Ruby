require "roo" # Importei a gem.

# 1-Nome do arquivo da planilha.

# Utilizamos o submódulo da gem <Roo>, que é <Excelx> seguido da classe <new> e instânciado a nossa planilha.

documento = Roo::Excelx.new("../Manipulação de arquivos/Planilhas/extração.xlsx") 

# Vamos específica a planilha padrão.

# Aqui definimos que o <documento> vai ser utilizado e que vamos utilizar apenas a primeira página da planilha com <documento.sheets.first>.

documento.default_sheet = documento.sheets.first 

# 2-Iterando as linhas da planilhas para estração de dados.

# Aqui criei um intervalo entre <2..documento.llast_row> para ler da linha 2 até a última linha. Usei o <.each> para ler toda a planilha.
# Criei um bloco com <do> para chama a minha <|linha|> e obter os dados da planilha.

(2..documento.last_row).each do |linha| 

    nome = documento.cell(linha, 1) # Utilizei o <.cell> para extração os dados da planilha sobre o nome na linha 1.

    idade = documento.cell(linha, 2) # Utilizei o <.cell> para extração os dados da planilha sobre o idade na linha 2.

    cidade = documento.cell(linha, 3) # Utilizei o <.cell> para extração os dados da planilha sobre o cidade na linha 3.

    puts "Nome: #{nome}, Idade: #{idade}, Cidade: #{cidade}" # Imprimindo os dados no terminal.

end






