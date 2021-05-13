# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'viewing HP' do
  scenario 'players start with 100 HP' do
    visit('/')
    fill_in('player_1_name', with: 'John')
    fill_in('player_2_name', with: 'Becca')
    click_button('Submit')

    # save_and_open_page

    expect(page).to have_content 'John: 100 HP vs Becca: 100 HP'
  end
end
