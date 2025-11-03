class Produto

  attr_accessor :nome, :preco
  
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end

  def to_s
    "#{@nome}-#{@preco}"
  end

  def descricao
    puts "Produto: #{@nome} - R$#{@preco}"
  end

end

class Pedido

    @@total = 0

    attr_accessor :clientes, :itens

    def initialize(clientes, itens)
      @clientes = clientes
      @itens =  itens
    end

    def to_s
      "#{super}-#{@clientes}-#{@itens}"
    end

    def total
      
    end

    def adicionar_item(produto)
      
    end
end
