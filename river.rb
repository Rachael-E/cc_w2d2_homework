class River
  attr_reader :river_name
  attr_accessor :fish_content

  def initialize(name_of_river, fish_content)
    @river_name = name_of_river
    @fish_content = fish_content

  end

  def fish_in_river
    return fish_content.length
  end
  #
  # def remove_fish(chosen_fish)
  #   @fish_content -= chosen_fish
  # end

  def new_fish(fish_type)
    fish_content << fish_type
  end

end
