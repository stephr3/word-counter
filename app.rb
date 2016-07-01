require('sinatra')
require('sinatra/reloader')
require('./lib/count_words_in')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/count') do
  @target_word = params.fetch('target_word')
  @user_text = params.fetch('user_text')
  @count = (@target_word).count_words_in(@user_text)
  erb(:count)
end
