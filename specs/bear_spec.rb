require ('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')

class BearTest < Minitest::Test

  def setup
    @bear = Bear.new("Baloo")
    @fish = Fish.new("Salmon")
    @river = River.new("Brooks River", [Fish.new("Salmon"), Fish.new("Trout"), Fish.new("Goldfish")])
  end

  def test_bear_exists
    assert_equal("Baloo", @bear.name)

  end

  def test_bear_is_starving
    assert_equal(0, @bear.bear_hunger)
  end

  def test_eat_a_fish
    @bear.eat_a_fish(@fish)
    assert_equal(1, @bear.bear_hunger)
    assert_equal("Salmon", @bear.stomach[0].species)
  end

  def test_hunt_a_fish
    @bear.hunt_a_fish(@river)
    assert_equal(2, @river.fish_in_river)
    assert_equal(1, @bear.stomach.length)

  end


end
