require 'pg'

class User
  attr_reader :first_name, :last_name, :email_address, :password, :id

  def initialize (first_name:, last_name:, email_address:, password:, id: )
    @first_name = first_name
    @last_name = last_name
    @email_address = email_address
    @password = password
    @id = id
  end

  def self.create(first_name:, last_name:, email_address:, password:)
    if ENV['ENVIRONMENT'] == 'test'
        connection = PG.connect(dbname: 'fya_hr_test')
    else
      connection = PG.connect(dbname: 'fya_hr')
    end
    result = connection.exec("INSERT INTO users (first_name, last_name, email_address, password)
     VALUES('#{first_name}', '#{last_name}', '#{email_address}','#{password}')
     RETURNING id, first_name, last_name, email_address, password;")

    User.new(id: result[0]['id'], first_name: result[0]['first_name'], last_name: result[0]['last_name'], email_address: result[0]['email_address'], password: result[0]['password'])
   end
 def self.verify(email_address:, password:)
   if ENV['ENVIRONMENT'] == 'test'
       connection = PG.connect(dbname: 'fya_hr_test')
   else
     connection = PG.connect(dbname: 'fya_hr')
   end
  result = connection.exec("SELECT * FROM users WHERE(email_address = '#{email_address}')").first
 if result == nil
   return "This user does not exsist please sign up."
 elsif result["password"] != password
   return "Your password is incorrect."
 else
   return true
  end
 end
end
