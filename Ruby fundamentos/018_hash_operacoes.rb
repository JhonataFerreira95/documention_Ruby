movie = {:name =>"Ousama ranking", :year => 2023}
puts movie

# 1-Método úteis.

# Verificar o tamanho do hash.

puts movie.size
puts movie.length

# Converte o hash em array.

puts movie.to_a # Como no array, não conseguimos ter chaves, apenas itens, todos os itens vem menos as chaves.

# Verificar o valor mínimo e máximo do hash .

puts movie.max
puts movie.min

# Pegando um valor por chave no hash.

puts movie.fetch(:name) # Aqui puxamos a chave do hash, chave = name, ele retorna no terminal.

# 2-Adiciona novo item

movie.store(:genre, "aventura") # Aqui adicionamos uma chave chamada <genre> que seria o genero do filme, passamos <"aventura"> como índice de <genre>.
movie.store(:rating, 5.0) # Aqui acontece a mesma coisa que foi explicado na parte de cima, só que agora o índice é FLOAT, e no outro caso era STRING.
puts movie # Retrona no terminal, toda informação do hash mais as dois novos índice.

# 3-Exclui uma chave.

movie.delete(:rating) # Aqui estamos usando um método para deletar o índice <rating>.
puts movie # Retorna toda a informação do hash exceto o índice <rating>, já que o mesmo foi excluído.

# 4-Limpa itens do hash.

movie.clear() # Aqui limpamos todos os itens do hash.
puts movie # Retorna o hash com 0 índices.
