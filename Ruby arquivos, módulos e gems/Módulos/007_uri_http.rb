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

