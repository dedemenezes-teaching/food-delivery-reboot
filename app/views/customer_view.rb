class CustomerView
  def ask_for(item)
    puts "#{item.capitalize}?"
    gets.chomp
  end

  def display(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name} - #{customer.address}"
    end
  end
end
