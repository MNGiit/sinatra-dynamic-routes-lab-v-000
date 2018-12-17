require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  # Accepts a name and renders the name backwards
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  # Accepts a number and returns the square of that number
  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}"
  end
  
  # Accepts a number and a phrase and returns that phrase in a string the number of times given
  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @say = params[:phrase]
    @num.times do |i|
      "#{@say}"
    end
  end
  
  # Accepts five words and returns a string containing all five words
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @combine = @word1 + @word2 + @word3 + @word4 + @word5
    "#{@combine}"
  end
  
end