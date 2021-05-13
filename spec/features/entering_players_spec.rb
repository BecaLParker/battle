# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'entering players' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'John: 100 HP vs Becca: 100 HP'
  end
end
