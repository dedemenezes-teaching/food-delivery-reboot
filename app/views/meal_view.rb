class MealView
  def ask_for(item)
    puts "#{item.capitalize}?"
    gets.chomp
  end

  def display(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1} - #{meal.name} - #{meal.price}"
    end
  end
end
