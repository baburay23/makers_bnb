class User
  attr_reader :first_name, :last_name, :email_address, :password

def initialize (first_name:, last_name:, email_address:, password:)
  @first_name = first_name
  @last_name = last_name
  @email_address = email_address
  @password = password
end

def self.create(first_name:, last_name:, email_address:, password:)
  if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'fya_hr_test')
    else
      connection = PG.connect(dbname: 'fya_hr')
    end
  result = connection.exec("INSERT INTO users (first_name, last_name, email_address, password) VALUES('#{first_name}', '#{last_name}', '#{email_address}','#{password}')")
  #User.new()
 end


#do this next

   #Bookmark.new(id: result[0]['id'], title: result[0]['title'],url: result[0]['url'])

end
