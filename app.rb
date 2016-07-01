require('sinatra')
require('sinatra/reloader')
# require('count_words_in')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
