feature "People Validation" do

  scenario 'user creates person' do

    visit root_path
    click_on "People"
    click_on "New"
    click_on "Create"
    expect(page).to have_content("First name can't be blank")

    fill_in "First name", with: "Joe"
    click_on "Create"
    expect(page).to have_content("Last name can't be blank")

    fill_in "Last name", with: "Schmoe"
    click_on "Create"
    expect(page).to have_content("Date of birth can't be blank")

    fill_in "Date of birth", with: "10/9/2000"
    click_on "Create"
    expect(page).to have_content("saved successfully")

  end

end
