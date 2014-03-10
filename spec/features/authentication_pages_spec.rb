require 'spec_helper'

feature "User authentication" do
  scenario "sign-in of existing user" do
    pending
    user = create(:user)
    sign_in(user)
    expect(page).to have_content(/Dashboard/)
  end

  scenario "sign-in of invalid user" do
    visit root_path
    fill_in 'Email', with: "pl@tip.us"
    fill_in 'Password', with: "testing123"
    click_button 'Sign In'
    expect(page).to have_content(/Email or password is invalid/)
  end
end
