# frozen_string_literal: true

require 'player'

describe Player do
  subject(:john) { Player.new('John') }

  describe '#name' do
    it 'returns the name' do
      expect(john.name).to eq 'John'
    end
  end
  describe '#hp' do
    it 'players start with 100 HP' do
      expect(john.hp).to eq Player::DEFAULT_HP
    end
  end
end
