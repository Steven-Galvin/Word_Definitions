require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the word/definitions path", {:type => :feature}) do

  it('creates word from index page') do
    visit('/')
    fill_in('word', :with => 'test_word')
    click_button('Add Word!')
    expect(page).to have_content('test_word')
  end

end
