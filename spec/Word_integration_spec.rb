require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the word/definitions path", {:type => :feature}) do

  before do
    Words.clear()
  end

  it('creates word from index page') do
    visit('/')
    fill_in('word', :with => 'test_word')
    click_button('Add Word!')
    expect(page).to have_content('test_word')
  end

  it('allows user to click on returned words and generate new page corresponding with word showing first definition') do
    visit('/')
    fill_in('word', :with => 'test_word')
    fill_in('definition', :with => 'test_definition')
    click_button('Add Word!')
    click_link('test_word')
    expect(page).to have_content('test_definition')
  end

end
