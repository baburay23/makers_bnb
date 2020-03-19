require 'pg'

class Reserve
  attr_reader :id, :check_in_date, :check_out_date, :r_duration

  def initialize (id:, check_in_date:, check_out_date:, r_duration:)
    @check_in_date = check_in_date
    @check_out_date = check_out_date
    @r_duration = r_duration

    @id = id
  end


def self.request(check_in_date:, check_out_date:, r_duration:)
  if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'fya_hr_test')
  else
    connection = PG.connect(dbname: 'fya_hr')
  end
  result = connection.exec("INSERT INTO reservations (check_in_date, check_out_date, r_duration)
   VALUES('#{check_in_date}', '#{check_out_date}', '#{r_duration}')
   RETURNING reservation_id, check_in_date, check_out_date, r_duration;")

  Reserve.new(id: result[0]['id'], check_in_date: result[0]['check_in_date'], check_out_date: result[0]['check_out_date'], r_duration: result[0]['r_duration'])
  end
end
