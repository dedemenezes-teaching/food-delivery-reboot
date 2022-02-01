# TODO: implement the router of your app.
class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    puts "Welcome to Food Delivery Livecode APP"
    puts "--------"
    while @running
      display_menu
      action = gets.chomp
      route_action(action)
    end
  end

  def route_action(action)
    case action
    when "1" then @meals_controller.add
    when "2" then @meals_controller.list
    when "3" then @customers_controller.add
    when "4" then @customers_controller.list
    when "9" then @running = false
    end
  end

  def display_menu
    puts "1. Add a new meal"
    puts "2. List all meals"
    puts "3. Add a new customer"
    puts "4. List all customers"
    puts "9. quit"
    print "> "
  end
end
