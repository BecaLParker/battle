# frozen_string_literal: true

# the Player class is responsible for the Model layer

class Player
  DEFAULT_HP = 100
  DEFAULT_DAMAGE = 10
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player, damage = DEFAULT_DAMAGE)
    player.receive_damage(damage)
  end

  def receive_damage(_damage)
    @hp -= DEFAULT_DAMAGE
  end
end
