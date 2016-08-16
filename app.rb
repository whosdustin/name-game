require 'sinatra'
require 'sinatra/base'
require 'sinatra/contrib'
require 'slim'
require 'tilt/sass'
require 'bundler'
Bundler.require(:default)
require './models/verb'
require './models/noun'

class App < Sinatra::Base

  configure do
    set :slim, :layout => :'layout'
    set :views, 'views/'
    Mongoid.load!('./mongoid.yml')

    enable :sessions
    use Rack::Session::Cookie, :secret => "ENV['SESSION_SECRET']"

  end
  get '/' do
    @rand_verb = Verb.all.pluck(:verb).sample
    @rand_noun = Noun.all.pluck(:noun).sample
		@hue = rand(360);
    slim :index
  end

  # Styles
  get '/styles.css' do
    scss :styles
  end

end
