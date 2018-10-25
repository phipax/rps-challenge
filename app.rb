require 'sinatra/base'
require './lib/hplay'

class Rps < Sinatra::Base

  before do
    @hp = HPlay.instance
  end

  get '/' do
    erb :app
  end

  get '/human' do
    erb :human
  end

  get '/computer' do
    erb :bot
  end

  post '/human-play' do
    session[:p1] ||= params[:p1]
    session[:p2] ||= params[:p2]
#    p "from inside human-play #{session[:p1]} #{session[:p2]}"
    @hp ||= HPlay.create(session[:p1],session[:p2])
    erb :play
  end

  post '/redir' do
#  p "redir called #{@hp.selection.count} -#{@hp.p1}-#{@hp.p2}-"
    @hp.selection.count < 1 ? @hp.select(@hp.p1) : @hp.select(@hp.p2)
#    p "before redirection"
   erb :play
  end

run! if app_file == $0
end
