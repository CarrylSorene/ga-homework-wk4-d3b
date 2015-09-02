require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './models/calc'

get '/' do
  @title = 'Calculator'
  erb :home
end

post '/' do
  case params[].downcase
  when + then form_input1 = params[:number1] + form_input2 = params[:number2]
  when - then form_input1 = params[:number1] - form_input2 = params[:number2]
  when * then form_input1 = params[:number1] * form_input2 = params[:number2]
  when '/' then form_input1 = params[:number1] / form_input2 = params[:number2]
  end
end
