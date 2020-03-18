feature 'Listing' do

  scenario 'Logged in can book a space' do
    sign_up("first_name", "last_name", "email_address", "password")
    login("email_address","password")
    click_button 'List a Space'
  expect(page.have_css?("input[name= 'first_name']")).to eq true
  expect(page.have_css?("input[name= 'last_name']")).to eq true
  expect(page.have_css?("input[name='description']")).to eq true
  expect(page.have_css?("input[name='price_per_night']")).to eq true
  expect(page.have_css?("input[name= 'available_from']")).to eq true
  expect(page.have_css?("input[name= 'available_to']")).to eq true
  end

  scenario 'Has a list space button' do
    sign_up("first_name", "last_name", "email_address", "password")
    login("email_address","password")
    expect(page).to have_content 'List a Space'
  end
end
