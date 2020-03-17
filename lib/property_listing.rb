class Property
 attr_reader :pl_id, :pl_name, :pl_description, :pl_price_night
  def initialize(pl_id,pl_name,pl_description,pl_price_night)
    @pl_id = pl_id
    @pl_name = pl_name
    @pl_description = pl_description
    @pl_price_night = pl_price_night
  end

  def self.display_all
    if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'fya_hr_test')
      else
        connection = PG.connect(dbname: "fya_hr")
      end

    result = connection.exec('SELECT * FROM property_listing;')
     result.map do |prop|
      Property.new(prop['pl_id'], prop['pl_name'], prop['pl_description'], prop['pl_price_night'])
    end
  end
end
