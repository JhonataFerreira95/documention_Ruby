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
# Sobre <url.host> retorna o nome do host (domínio ou endereço IP) do servidor ao qual você deseja se conectar.
# Sobre <url.port> retorna o número da porta que será usada para a conexão. Se a porta não for especificada na URL, o valor padrão será 80 para HTTP e 443 para HTTPS.

http = Net::HTTP.new(url.host, url.port) # Vamos insância a nossa classe <HTTP> e vamos passar um parâmetro para a mesma.

# Se for necessários utilizar o HTTPS, vamos adicionar isso a seguir.
# Essa linha configura automaticamente o cliente HTTP para usar SSL/TLS apenas quando a URL começa com https. 

http.use_ssl = (url.scheme == 'https') 

=begin Sobre o uso de <https.use_ssl> e <url.scheme>.

 url.scheme:

O método scheme retorna o protocolo da URL, que pode ser http ou https.

url.scheme == 'https':

 Essa é uma comparação que verifica se o protocolo da URL é https.

 Se for https, a expressão retorna true.
 Se for http, a expressão retorna false.

http.use_ssl = (url.scheme == 'https'):

 Aqui, o valor da comparação (true ou false) é atribuído à propriedade use_ssl do objeto http.
 Se a URL for https, use_ssl será true, e o cliente HTTP usará SSL/TLS para criptografar a conexão.
 Se a URL for http, use_ssl será false, e a conexão será feita sem criptografia.

=end

# 3-Enviando uma requisição para o HTTP.

# Consultando dados com o metódo GET. Utilizamos o <request> para fazer a requisição.

request = Net::HTTP::Get.new(url) # Aqui estamos fazendo uma requisição para nossa <url> e essa requisição é do tipo <Get>.

# Utilizamos o <response> para fazer a requisição.

response = http.request(request) # faz uma solicitação <HTTP> usando um objeto <request> e armazena a resposta na variável <response>.

# Adicionamos uma condicional para verificar se a resposta vai ser em array, depois passamos os parâmentros para verificar se a reposta foi um sucesso.

if response.is_a?(Net::HTTPSuccess) # Estamos verificando se ouver código de sucesso ou seja, código 200. Quando o servidor vai responder para o cliente, ele pode responde de 5 formas.

# Status code, 100~500. 100=Código de informação. 200=Código de sucesso. 300=Código de redirecionamento. 400=Código de erro no lado do cliente. 500=Código de erro no lado do servidor.


