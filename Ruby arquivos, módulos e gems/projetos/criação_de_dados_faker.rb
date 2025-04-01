require "faker" # Importei a gem.
require "csv" # Importei o módulo.


dados = []

# 1-Armazenando dados 20 vezes.

20.times do # Criei um loop para ser executado 20 vezes.

  nome = Faker::Name.name # Aqui utilizei a gem <Fake> e um submódulo <Name> seguido da classe <name> para gerar um nome aleatório.
  email = Faker::Internet.email # Aqui utilizei a gem <Fake> e um submódulo <Internet> seguido da classe <email> para gerar emails aleatório.
  telefone = Faker::PhoneNumber.phone_number # Aqui utilizei a gem <Fake> e um submódulo <PhoneNumber> seguido da classe <phone_number> para gerar números de telefones aleatório.

  dados << [nome, email, telefone] # Passando os dados para o meu array utilizando o <binary left_shift>.

end

# 2-Expotando para CSV.

arquivo_csv = "../Manipulação de arquivos/Csv/dados_faker.csv" # Criado a variável para apontar para diretório.

CSV.open(arquivo_csv, "w") do |csv| # Aqui iniciei o caminho do arquivo e definir que utilizarei <w> que é write, sendo escrita.
  csv << ["Nome", "E-mail", "Telefone"] # Criei um cabeçalho utilizando o <binary left_shift>.
  dados.each do |dado| # Depois que criar o cabeçalho, chamei os dados com <dados> interei os dados com <.each>, criamos um bloco com <do> seguido com a variável dentro dos pipes <|dado|>.
    csv << dado # Utilizando o <binary left_shift> para passar os dados para arquivo <csv>. Depois que tiver o cabeçalho ele vai pegar os itens do meu array e passar para meu arquivo <csv>.
  end
end

# Mensagem de sucesso em salvar os dados.

puts "Dados foram salvo em #{arquivo_csv}!"