require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'config/application'

require_relative 'src/scrap_stacio'
include ScrapStacio

get '/' do
    ScrapStacio.main
end