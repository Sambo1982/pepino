Given(/^I am on the new user page$/) do
  visit new_user_path
end

When(/^I enter valid user data$/) do
  fill_in "Name",    with: "Sam Carlsruh"
  fill_in "Email", with: "samcarlsruh@gmail.com"
  fill_in "Password", with: "foobar"
  fill_in "Confirm Password", with: "foobar"
  click_button "Join"
end

Then(/^I should see My Dashboard page$/) do
  expect(page).to have_text('My Dashboard')
end

Then(/^I should see a success message$/) do
   expect(page).to have_selector('div.alert.alert-success')
end