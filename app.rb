require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @title = 'Calculator'
  erb :home
end

post '/' do
  case params[:select]
    when '+' then @home = form_input1 = params[:number1].to_f + form_input2 = params[:number2].to_f
    when '-' then @home = form_input1 = params[:number1].to_f - form_input2 = params[:number2].to_f
    when '*' then @home = form_input1 = params[:number1].to_f * form_input2 = params[:number2].to_f
    when '/' then @home = form_input1 = params[:number1].to_f / form_input2 = params[:number2].to_f
    
    else erb :home
    end
  erb :home
end
