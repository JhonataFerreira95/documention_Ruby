module Sistem
    total = 0
    
    def calcularMontante
      total += self.preco 
      puts "O total das compras é: R$#{total}"
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


class Pedido 

    include Sistem

    attr_accessor :clientes, :itens

    def initialize(clientes, itens)
      @clientes = clientes
      @itens = []
    end

    def to_s
      "#{super}-#{@clientes}-#{@itens}"
    end

    def adicionar_item(produto)
      produto = " Produto - #{self.fazer_pedido}"
    end

    protected

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

  def fazer_pedido(fazer_pedido)
    fazer_pedido = Pedido.new
    self.detalhes
  end

end

p1 = Produto.new("cola", 10)
p2 = Produto.new("caneta", 20)
cliente = Cliente.new("Bass")

pedido = cliente.fazer_pedido

pedido.adicionar_item(p1)
pedido.adicionar_item(p2)

puts pedido.detalhes

