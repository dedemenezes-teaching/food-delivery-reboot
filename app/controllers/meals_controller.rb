require_relative '../views/meal_view'
require_relative '../models/meal'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meal_view = MealView.new
  end

  def add
    name = @meal_view.ask_for(:name)
    price = @meal_view.ask_for(:price).to_i
    meal = Meal.new(name: name, price: price)
    @meal_repository.create(meal)
    list
  end

  def list
    meals = @meal_repository.all
    @meal_view.display(meals)
  end
end
