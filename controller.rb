require( "sinatra" )
require( "sinatra/contrib/all" ) if development?
require( "pry-byebug" )
require( "pg" )
require_relative( "./models/sql_runner.rb" )
require_relative( "./models/order.rb")


get '/shoes/new' do
  erb( :new )
end

get '/shoes/orders' do
  @orders = Order.all()
  erb( :orders )
end

get '/shoes' do
  erb( :home )
end


post '/shoes' do
  @order = Order.new( params )
  @order.save()
  erb( :create )
end