feature 'Homepage' do

  scenario 'Can list all properties' do
      visit '/'
    expect(page).to have_content 'All properties'
  end

end
