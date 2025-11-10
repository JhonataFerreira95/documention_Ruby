module Sistem
    
    def calcularMontante
      total += self.preco 
      puts "O total das compras é: R$#{total}"
    end

    def listaPedido
          
    end

end

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

    include Sistem

    attr_accessor :clientes, :itens

    def initialize(clientes, itens)
      super(nome, preco)
      @clientes = clientes
      @itens = []
    end

    def to_s
      "#{super}-#{@clientes}-#{@itens}"
    end

    def adicionar_item(Produto)
      self.fazer_pedido

    end

    def detalhes
      puts "---Itens pedido---"
      self.descricao
      puts "A quantidade itens foi #{adicionar_item}"
      self.calcularMontante
    end
end

class Cliente
    
  attr_accessor :nomeCliente

  def initialize(nomeCliente)
    @nomeCliente = nomeCliente
  end

  def fazer_pedido(pedido)
    puts "Cliente: #{@nomeCliente}"
    pedido = self.Produto
  end

end

p1 = Produto.new("cola", 10)
p2 = Produto.new("caneta", 20)
cliente = Cliente.new("Bass")

pedido = cliente.fazer_pedido

pedido.adicionar_item(p1)
pedido.adicionar_item(p2)

puts pedido.detalhes

