require 'sinatra'
require 'sinatra/json'
require_relative 'lib/Item.rb'
require_relative 'lib/item_database.rb'

apple = Item.new('Apple', 100)
banana = Item.new('Banana', 50)

db = ItemDatabase.new
db.add(apple)
db.add(banana)

get '/' do
  "hello, sinatra!"
end

get '/items/:name' do
  name = params['name']
  price = name.price.find()
  json(name: name, price: price)
end
