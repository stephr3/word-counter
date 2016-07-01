require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the count words path', {:type => :feature}) do
  it('processes the user target word, counts how many times the target word appears in a given text, and returns this count') do
    visit('/')
    fill_in('target_word', :with => "pet")
    fill_in('user_text', :with => "Pet a pet dog in the pet store.")
    click_button("count_words")
    expect(page).to have_content("3 times")
  end
end
