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

