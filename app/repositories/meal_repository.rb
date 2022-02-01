require 'csv'
require_relative 'base_repository'

class MealRepository < BaseRepository
  def initialize(csv_file_path)
    super(csv_file_path, Meal)
  end
end
