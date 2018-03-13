require ('minitest/autorun')
require_relative('../fish.rb')

class FishTest < Minitest::Test

  def setup
    @fish_species = Fish.new("Salmon")

  end

  def test_species_exist
    assert_equal("Salmon", @fish_species.species)
  end

end
