# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'viewing HP' do
  scenario 'players start with 100 HP' do
    sign_in_and_play
    expect(page).to have_content 'John: 100 HP vs Becca: 100 HP'
  end
end
