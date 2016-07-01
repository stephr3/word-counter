require('sinatra')
require('sinatra/reloader')
require('lib/count_words_in')
also_reload('lib/**/*.rb')
