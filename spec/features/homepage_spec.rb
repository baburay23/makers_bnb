feature 'Homepage' do

  scenario 'Can list all properties' do
      visit '/home'

    expect(page).to have_link 'Home'
    expect(page).to have_link 'Requests'
    expect(page).to have_link 'Login'

  end
end
