require 'mongo'

conection_db = Mongo::Connection_db.new(['localhost:27017'], database => 'cadastroDB')