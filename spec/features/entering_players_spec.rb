# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'entering players' do
  scenario 'submitting names' do
    visit('/')
    fill_in('player_1_name', with: 'John')
    fill_in('player_2_name', with: 'Becca')
    click_button('Submit')
    expect(page).to have_content 'John vs Becca'
  end
end
