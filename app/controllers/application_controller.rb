require 'sinatra/base'
# require-relative '../../config/environment'
require-relative '../models/team'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(params[:team])
      # raise @team.inspect
      erb :team
    end

end
