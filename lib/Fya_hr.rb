class Fya_hr


def self.create(first_name:, last_name:, email_address:, password:)
  if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'fya_hr_test')
    else
      connection = PG.connect(dbname: 'fya_hr')
    end
  result = connection.exec("INSERT INTO users (first_name, last_name, email_address, password) VALUES('#{first_name}', '#{last_name}', '#{email_address}','#{password}')")
 end



end
