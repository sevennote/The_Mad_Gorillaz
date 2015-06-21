require 'rails_helper'

describe "the log in process", :type => :feature do
  User.create!(:username => 'mrpants', :password => 'pants')

  it "logs me in" do
    visit login_path
    within "#login" do
      fill_in 'user_username', :with => 'mrpants'
      fill_in 'user_password', :with => 'pants'
      click_button 'Login'
    end
    visit root_path
    expect(page).to have_content('Hello, mrpants')
    first(:link, 'Create').click
    expect(page).to have_content('Create a new survey!')
  end
end