# 1-Criando Hash.

mov = Hash.new # criado um hash.
puts mov.class # retorna o hash no terminal.

# Instanciando itens no hash.

movie = {"name" => "Ousama raking", "year" => 2023} # Uma das forma de passar valores no hash.
puts movie

# Outra forma de definir a chave.

movie2 = {:name => "Solo leveling", :year => "2024"} # Outra forma para passar valores no hash é com <:>.
puts movie2 # Para o hash reconhecer os valores, é obrigatório usar os <:> ou <""> para que tudo funcione de forma perfeita.

# 2-Iterando valores (for, while e each).

# keys.

puts movie2.keys # O método keys. Imprime as chaves no terminal com o <Keys>. conseguimos recuperar as chaves.
puts movie2.values # O método keys e values. Imprime as valores no terminal com o <values>. conseguimos recuperar os valores.

# Iterando com for.

