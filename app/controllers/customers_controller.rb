require_relative '../models/customer'
require_relative '../views/customer_view'

class CustomersController
  def initialize(customer_repo)
    @customer_repo = customer_repo
    @customer_view = CustomerView.new
  end

  def add
    name = @customer_view.ask_for(:name)
    address = @customer_view.ask_for(:address)
    customer = Customer.new(name: name, address: address)
    @customer_repo.create(customer)
  end

  def list
    customers = @customer_repo.all
    @customer_view.display(customers)
  end
end
