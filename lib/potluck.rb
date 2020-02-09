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

  def menu
    category_list = []
    dishes.each do |dish|
      category_list << dish.category
    end
    category_list_uniq = category_list.uniq

    potluck_menu ={}
    category_list_uniq.each do |category|
      potluck_menu[category] = get_all_from_category(category)
    end

    potluck_menu.each do |category, dish|
      dish.map! do |dish|
        dish = dish.name
      end
      dish.sort!
    end
    potluck_menu
  end

  def ratio(category)
    total_dishes = 0
    menu.values.each do |dishes|
    total_dishes += dishes.length
    end
    (menu[category].length / total_dishes.to_f) * 100
  end
end
