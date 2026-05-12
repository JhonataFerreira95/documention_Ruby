require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: '2319',
  database: 'estoque'
)

ActiveRecord::Schema.define do
    create_table :categories do |t|
      t.string :name
    end

    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.integer :stock_amount, default: 0
    end
end

class Category < ActiveRecord::Base
  has_many :products
end

class Product < ActiveRecord::Base
  belongs_to :category

  def descrease_stock(amount)
    if self.stock_amount >= amount
      self.stock_amount -= amount
      self.save
    else
      puts "não há estoque!"
    end
  end

  def increase_stock(amount)
    self.stock_amount += amount
    self.save
  end
end

category = Category.create(name: 'Eletrônicos')

product1 = category.products.create(name: 'phone', stock_amount: 10)
product2 = category.products.create(name: 'notebook', stock_amount: 5)

product1.descrease_stock(3)
product2.increase_stock(10)

all_products = Product.all

all_products.each do |p|
  puts "Nome: #{p.name}, Cateogria #{p.category.name}, Estoque: #{p.stock_amount}"
end


