require 'sinatra/base'
# require-relative '../../config/environment'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(params[:team])

      @team.members.each {|m| Hero.new(m)}

      erb :team
    end

end
