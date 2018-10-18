require 'date'
require 'sinatra/base'
require 'tool'

class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/details' do
    session[:user_name] = params[:user_name]
    session[:bday] = params[:bday]
    redirect '/greeting'
  end

  get '/greeting' do
    @user_name = session[:user_name]


    if days_until_birthday(session[:bday]) == 0
      erb :greeting
    elsif days_until_birthday(params[:bday]) <= 7
      erb :notlong
    else
      erb :countdown
    end

  end

  get '/countdown' do
    @user_name = session[:user_name]
    erb :countdown
  end

  run! if app_file == $0
end
