class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

  def get_all_from_category(category)
    list_dish_category = []
    @dishes.each do |dish|
      if dish.category == category
        list_dish_category << dish
      end
    end
    list_dish_category
  end
end
