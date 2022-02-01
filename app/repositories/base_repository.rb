class BaseRepository
  def initialize(csv_file_path, the_class)
    @the_class = the_class
    @csv_file_path = csv_file_path
    @elements = []
    @next_id = 1
    load_csv if File.exist?(@csv_file_path)
  end

  def all
    @elements
  end

  def create(element)
    element.id = @next_id
    @elements << element
    @next_id += 1
    save_csv
  end

  def find(id)
    @elements.find { |element| element.id == id }
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row = @the_class.prepare_row(row)

      @elements << @the_class.new(row)
    end
    @next_id = @elements.empty? ? 1 : @elements.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file_path, 'wb') do |csv|
      # MEAL  ['id', 'name', 'price']
      # CUSTOMER ['id', 'name', 'address']

      csv << @the_class.csv_headers
      @elements.each do |element|
        csv << element.to_csv
      end
    end
  end
end
