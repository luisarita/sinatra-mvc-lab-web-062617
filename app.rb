require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end
    post '/piglatinize' do
        pg = PigLatinizer.new
        @result = pg.to_pig_latin(params[:user_phrase])
        erb :last_response
    end
end