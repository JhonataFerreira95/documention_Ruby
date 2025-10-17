class Livro

  attr_accessor :titulo, :autor

  attr_reader :ano

  def initialize(titulo, autor, ano)
    @titulo = titulo
    @autor = autor
    @ano = ano
  end

  def descricao
    puts "#-O título do livro é #{@titulo}-#"
    puts "#-O autor  livro é #{@autor}-#"
    puts "#-O ano de lançamento do livro é #{@ano}"
  end

  def to_s
    "#{@titulo}-#{@autor}-#{@ano}"
  end

end

livro = Livro.new("Aurora", "Dell", 2025)

puts livro.descricao

livro.titulo = "Odyssey"
livro.autor = "Sam"
livro.ano = 2017

puts livro.descricao