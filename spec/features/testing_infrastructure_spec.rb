# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'infrastructure working' do
  scenario 'visiting homepage displays content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end
