require 'active_record'

ActiveRecord::Base.establish_connection(
  adpater: 'postgres',
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
  has_many :Products
end

class Product < ctiveRecord::Base
  belongs_to :Category

  def descrease_stock(amount)
    if self.stock_quantity >= amount
      self.stock_quantity -= amount
      self.save
    else
      puts "não há estoque!"
    end
  end

  def increase_stock(amount)
    self.stock_quantity += amount
    self.save
  end
end


