require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'

class PotluckTest < Minitest::Test
  def setup
    @potluck = Potluck.new("7-13-18")
  end

  def test_it_exists_and_has_attributes
    assert_instance_of Potluck, @potluck
    assert_equal "7-13-18", @potluck.date
  end

  def test_it_starts_with_no_dishes
    assert_equal [], @potluck.dishes
  end
end




# pry(main)> potluck.date
# #=> "7-13-18"
#
# pry(main)> potluck.dishes
# #=> []
#
# pry(main)> couscous_salad = Dish.new("Couscous Salad", :appetizer)
# #=> #<Dish:0x00007fccc4249940...>
#
# pry(main)> cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
# #=> #<Dish:0x00007fccc499ceb8...>
#
# pry(main)> potluck.add_dish(couscous_salad)
#
# pry(main)> potluck.add_dish(cocktail_meatballs)
#
# pry(main)> potluck.dishes
# #=> [#<Dish:0x00007fccc4249940...>, #<Dish:0x00007fccc499ceb8...>]
#
# pry(main)> potluck.dishes.length
# #=> 2
