class Bear
  attr_reader :name
  attr_accessor :stomach

  def initialize(name_of_bear)
    @name = name_of_bear
    @stomach = []

  end

  def bear_hunger()
    return @stomach.length

    if @stomach.length == 0
      return "Baloo is hungry"
    end
  end

  def eat_a_fish(fish)
    @stomach << fish
  end

  def hunt_a_fish(river_name) #hunt a fish from that river
    if river_name.fish_content != 0
      unlucky_fish = river_name.fish_content.shift
      @stomach << unlucky_fish
    end
  end

  # def hunt_many_fish(river_name, swimming_fish)
  #
  #   if river_name.fish_content != 0
  #     #push fish into stomach
  #     unlucky_fishes = river_name.fish_content.shift
  #     @stomach << unlucky_fishes
  #
  #   end
  # end

  def bear_digests()
    @stomach.empty?()
  end



end
