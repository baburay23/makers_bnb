feature 'Homepage' do

  scenario 'Can list all properties' do
      visit '/home'
      save_and_open_page
    expect(page).to have_content "property_1"
    expect(page).to have_content "seaside_view"
    expect(page).to have_content 75
  end

end
