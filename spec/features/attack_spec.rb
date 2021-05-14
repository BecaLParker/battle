# frozen_string_literal: true

require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'attacking' do
  scenario 'attack on player 2' do
    sign_in_and_play
    click_button('Attack')

    expect(page).to have_content 'John attacked Becca!!'
  end

  it 'reduces HP' do
    sign_in_and_play
    click_button('Attack')

    expect(page).to have_content '90 HP'
  end
end
