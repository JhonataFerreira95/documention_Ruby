# 1-Renomeando arquivos.

# Para renomear o nome do arquivo utilizamos <File.rename>. Passamos o arquivo e nome com o caminho, depois passamos o caminho com o novo nome do arquivo.
File.rename("../Manipulação de arquivos/Text/cursos.txt", "../Manipulação de arquivos/Text/courses.txt") 

# 2-Excluindo arquivo.

# Para excluir arquivos temos que verificar se ele ao menos existe. Para isso usamos uma condicional para verificar se ele existe ou nào.
if File.exist?("../Manipulação de arquivos/Text/cursosTI.txt") # Aqui verificamos se ele existe.
  File.delete("../Manipulação de arquivos/Text/cursosTI.txt") # Como o arquivo em si não existe, ele nem entra na condição, não aparece nada no terminal.
end

# Testando com um arquivo que existe.
if File.exist?("../Manipulação de arquivos/Text/test.txt") # Aqui verificamos se ele existe.
  File.delete("../Manipulação de arquivos/Text/test.txt") # Como o arquivo em si não existe, ele nem entra na condição, não aparece nada no terminal.
end