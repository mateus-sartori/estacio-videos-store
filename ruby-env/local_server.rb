require "sinatra"
require "sinatra/reloader" if development?
require_relative "config/application"
require "open-uri"
require "fileutils"

require_relative "src/scrap_stacio"
include ScrapStacio

get "/" do
  ScrapStacio.vimeo
end
