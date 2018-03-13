require ('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')

class RiverTest < Minitest::Test

  def setup
    @river_with_fish = River.new("Brooks River", [Fish.new("Salmon"), Fish.new("Trout"), Fish.new("Goldfish")])
  end

  def test_river_exists
    assert_equal("Brooks River", @river_with_fish.river_name)
  end

  def test_how_many_fish_are_in_river
    assert_equal(3, @river_with_fish.fish_in_river)
  end

  # def test_remove_fish_from_river
  #   @river_with_fish.remove_fish()
  #   assert_equal(19, @river_with_fish.fish_content)
  # end







end
