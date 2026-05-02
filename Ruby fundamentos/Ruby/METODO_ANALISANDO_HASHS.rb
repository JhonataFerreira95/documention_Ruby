=begin

Faça um programa que tenha uma função notas() que pode receber várias notas de alunos e vai retornar um dicionário com as seguintes informações:
Quantidade de notas 
A maior nota
A menor nota 
A média da turma
A situação (opcional)

=end

def notas(*n, situacao: false)
  res = {
    total: n.size,
    maior: n.max,
    menor: n.min,
    media: (n.sum.to_f / n.size).round(2)
  }

  if situacao
    if res[:media] >= 7
      res[:situacao] = "BOA"
    elsif res[:media] >= 5
      res[:situacao] = "RAZOÁVEL"
    else
      res[:situacao] = "RUIM"
    end
  end

  return res
end

# Testando a função
resp = notas(5.5, 2.5, 1.5, situacao: true)
puts resp