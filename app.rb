require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    @sqnumber = @squared.to_s
    "#{@sqnumber}"
    #binding.pry
  end

  get '/say/:number/:phrase' do
    @words = params[:phrase]
    @num = params[:number].to_i
    "#{@words}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
    @sentence = "#{params[:word1]}" + " " + "#{params[:word2]}" + " " + "#{params[:word3]}" + " " + "#{params[:word4]}" + " " + "#{params[:word5]}" + "."
    @sentence
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    #binding.pry
    if @op == "add"
      sum = @num1 + @num2
      sum.to_s
    elsif @op == "subtract"
      diff = @num1 - @num2
      diff.to_s
    elsif @op == "multiply"
      product = @num1 * @num2
      product.to_s
    elsif @op == "divide"
      quotient = @num1 / @num2
      quotient.to_s
    end
  end

end