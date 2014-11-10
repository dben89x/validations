feature "Organizations Validation" do

  scenario 'user creates organization' do

    visit root_path
    click_on "Organizations"
    click_on "New Organization"
    click_on "Create Organization"

    expect(page).to have_content("Name can't be blank")

    fill_in "Name", with: "Org 1"
    click_on "Create"
    expect(page).to have_content("saved successfully")

  end

end
