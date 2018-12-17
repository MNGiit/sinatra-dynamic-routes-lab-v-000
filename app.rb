require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  # Accepts a name and renders the name backwards
  get "/reversename/:name" do
    @name = params[:name]
    "#{name.reverse}"
  end
  
  # Accepts a number and returns the square of that number
  get "/square/:number" do
    @num = params[:number]
    "#{@num * @num}"
  end
  
end