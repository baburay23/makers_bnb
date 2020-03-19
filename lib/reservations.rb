require 'pg'

class Reservation
  def initialize(id,description,price_per_night)
    @r_status = "available"
    @id = id
    @description = description
    @price_per_night = price_per_night
  end

  def self.add(id:,description:,price_per_night:)
    if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'fya_hr_test')
    else
      connection = PG.connect(dbname: 'fya_hr')
    end

    result = connection.exec("INSERT INTO reservations (id, description, t_price)
     VALUES('#{id}', '#{description}', '#{price_per_night}')
     RETURNING id, description, t_price;")

    Reservation.new(result[0]['id'],result[0]['description'], result[0]['t_price'])
  end
end
