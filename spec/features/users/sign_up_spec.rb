require 'spec_helper'

feature 'Users' do
  scenario "sign up" do
    visit root_url
    click_link 'Sign Up'
    fill_in 'Name', :with => "Foo"
    fill_in 'Email', :with => "foo@example.com"
    fill_in 'Password', :with => "password"
    fill_in 'Password confirmation', :with => "password"
    click_button "Create User"
    success_message = "Your User has been successfully created"
    page.should have_content(success_message)
  end
end
