require 'active_record'

ActiveRecord::Base.establish_connection(
  adpater: 'postgres',
  host: 'localhost',
  username: 'postgres',
  password: '2319',
  database: 'estoque'
)