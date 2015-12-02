require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
get '/' do
  erb :home
end

get '/about_us' do
  erb :about_us
end

get '/contact_us' do
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]

  @a = @name 
  # @text = @name + @email + @message

  erb :contact_us
end

get '/thanks' do
  @b = @a
  erb :thanks
end


get '/calculate' do
  @first = params[:first].to_f
  @second = params[:second].to_f
  @operator = params[:operator]

  @result = case @operator
    when '+' then @first + @second
    when '-' then @first - @second
    when '*' then @first * @second
    when '/' then @first / @second
  end

  erb :result
end