require_relative 'app/models/meal'
require_relative 'app/repositories/meal_repository'



csv_file_path = 'data/meals.csv'
meal_repository = MealRepository.new(csv_file_path)
p meal_repository

strogonoff = Meal.new(name: "Strogonoff", price: 15)

p strogonoff
