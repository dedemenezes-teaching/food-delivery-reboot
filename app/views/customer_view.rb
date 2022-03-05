require_relative 'base_view'

class CustomerView < BaseView
  def display(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name} - #{customer.address}"
    end
  end
end
