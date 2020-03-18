def sign_up(first_name, last_name, email_address, password)
  visit('/sign_up')
  fill_in('first_name', with: first_name)
  fill_in('last_name', with: last_name)
  fill_in('email_address', with: email_address)
  fill_in('password', with: password)
  fill_in('confirm_password', with: password)
  click_button('sign up')
end

def login (email_address, password)
  visit('/login')
  fill_in('email_address', with: email_address)
  fill_in('password', with: password)
  click_button('log in')
end
