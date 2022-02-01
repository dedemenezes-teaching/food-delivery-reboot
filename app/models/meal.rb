class Meal
  # id, name, price
  attr_reader :name, :price
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price]
  end

  def self.csv_headers
    ["id", "name", "price"]
  end

  def self.prepare_row(row)
    row[:id] = row[:id].to_i
    row[:price] = row[:price].to_i

    row
  end

  def to_csv
    [@id, @name, @price]
  end
end
