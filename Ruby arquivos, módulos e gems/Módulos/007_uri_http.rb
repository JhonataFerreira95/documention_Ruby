# 1-Criando instância HTTP.
require 'uri' # Para fazer a requisição do módulo <URI>.
require 'net/http' # Para fazer a requisição do módulo <HTTP>.

# Para enviar uma requisição para internet.
# Para fazer a requisição, precisamos de uma url. Essa url é padronizada pela <URI>

url = URI.parse('https://www.exemple.com') # Para a requisição utilizamos o <URI> e para permissão de endereço utilizamos o <.parse> para passar o link do site onde faremos a requisição.

# Retorna informações que pedimos na requisição do site, que será o seu domínio.

puts url 

# Retorna o tipo da <url> que será <URI::HTTP>, já que estamos utilizando protocolo HTTPS.

puts url.class 

# 2-Enviando requisição HTTP

# Esqueci de mencionar que podemos ter uma classe dentro de um módulo perfeitamente.

http = Net::HTTP.new(url.host, url.port) # Vamos insância a nossa classe <HTTP> e vamos passar um parâmetro para a mesma.

# Sobre <url.host> retorna o nome do host (domínio ou endereço IP) do servidor ao qual você deseja se conectar.
# Sobre <url.port> retorna o número da porta que será usada para a conexão. Se a porta não for especificada na URL, o valor padrão será 80 para HTTP e 443 para HTTPS.
