require_relative "csv_reader"
require_relative "area"

class Setup
  attr_accessor :areas
  def initialize
      csv = CSVReader.new("./free-zipcode-database.csv")
      @areas = []
      csv.read do |item|
        @areas << Area.new(items)
      end
      self
  end
end