class Produto

  attr_accessor :nome, :preco
  
  def initialize(nome, preco)
    @nome = nome
    @preco = preco
  end

  def to_s
    "#{@nome}-#{@preco}"
  end

  protected

  def descricao
    puts "Produto: #{@nome} - R$#{@preco}"
  end

end


class Pedido < Produto

    @@total = 0

    attr_accessor :clientes, :itens

    def initialize(clientes, itens)
      super(nome, preco)
      @clientes = clientes
      @itens =  itens.to_a

      @@total += 1
    end

    def to_s
      "#{super}-#{@clientes}-#{@itens}"
    end

    def total
      
    end

    def adicionar_item(produto)
      produto = @itens.preco
      produto += @@total
    end

    def detalhes
      self.descricao
      puts "A quantidade itens foi #{adicionar_item}"
    end
end

class Cliente
    
  attr_accessor :nome

  def initialize(nome)
        
  end

end

p1 = Produto.new("cola", 10)
p2 = Produto.new("caneta", 20)


