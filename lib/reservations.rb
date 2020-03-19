require 'pg'

class Reservation
  def initialize(id,description,total_price)
    @id = id
    @description = description
    @total_price = total_price
  end

  def self.add(id:,description:,total_price:)
    r_status = "available"
    if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'fya_hr_test')
    else
      connection = PG.connect(dbname: 'fya_hr')
    end

    result = connection.exec("INSERT INTO reservations (r_status, owner_id, description, total_price)
     VALUES('#{r_status}','#{id}', '#{description}', '#{total_price}')
     RETURNING owner_id, description, total_price;")

    Reservation.new(result[0]['id'],result[0]['description'], result[0]['total_price'])
  end
end
