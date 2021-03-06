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

When(/^I do not add a name$/) do
  fill_in "Name",    with: ""
end

When(/^I do add a valid email, password, confirm password$/) do
  fill_in "Email", with: "samcarlsruh@gmail.com"
  fill_in "Password", with: "foobar"
  fill_in "Confirm Password", with: "foobar"
end

When(/^I do submit the form$/) do
  click_button "Join"
end

Then(/^I should be on the new user page$/) do
  expect(page).to have_text('Sign up')
end

Then(/^I should see a form error$/) do
  expect(page).to have_selector('div.alert.alert-error')
end

When(/^I do not add an email$/) do
  fill_in "Email", with: ""
end

When(/^I do add a valid name, password, confirm password$/) do
  fill_in "Name",    with: "Sam Carlsruh"
  fill_in "Password", with: "foobar"
  fill_in "Confirm Password", with: "foobar"
end

When(/^I do add an invalid email$/) do
  fill_in "Email", with: "sv24vv"
end

When(/^I do add a valid name, email$/) do
   fill_in "Name",    with: "Sam Carlsruh"
  fill_in "Email", with: "samcarlsruh@gmail.com"
end

When(/^I do add an invalid password$/) do
  fill_in "Password", with: "fo"
end

When(/^I do add a valid name, email, and password$/) do
  fill_in "Name",    with: "Sam Carlsruh"
  fill_in "Email", with: "samcarlsruh@gmail.com"
  fill_in "Password", with: "foobar"
end

When(/^I do add an invalid confirm password$/) do
  fill_in "Confirm Password", with: "barfoo"
end

