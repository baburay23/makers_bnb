class Property
  attr_reader :list
  def initialize
    @list = ["1property","2property","3property"]
  end

  def display_all
    if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'fya_hr_test')
      else
        connection = PG.connect(dbname: 'fya_hr')
      end

    result = connection.exec('SELECT * FROM property_listing')
    #result.map { |property_listing| property_listing['pl_name'], property_listing['pl_description'], property_listing['pl_price_night'] }
  end
end
