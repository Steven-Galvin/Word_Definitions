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

  it('allows user to add new definitions to existing words') do
    visit('/')
    fill_in('word', :with => 'test_word')
    fill_in('definition', :with => 'test_definition')
    click_button('Add Word!')
    click_link('test_word')
    fill_in('definition', :with => 'test_definition2')
    click_button('Add Definition!')
    expect(page).to have_content('test_definition2')
  end

  it('allows user to return to home page by clicking the header') do
    visit('/')
    fill_in('word', :with => 'test_word')
    fill_in('definition', :with => 'test_definition')
    click_button('Add Word!')
    click_link('test_word')
    click_link('Words & Definitions')
    expect(page).to have_content('Welcome to the word and definitions maker!')
  end
end
