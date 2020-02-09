class Potluck
  attr_reader :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end
end
