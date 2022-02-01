class Customer
  attr_accessor :id
  attr_reader :name, :address

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @address = attributes[:address]
  end

  def self.csv_headers
    ["id", "name", "address"]
  end

  def self.prepare_row(row)
    row[:id] = row[:id].to_i
    row[:address] = row[:address]

    row
  end

  def to_csv
    [@id, @name, @address]
  end
end
