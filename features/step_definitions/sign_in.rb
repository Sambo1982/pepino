Given(/^a user visits the signin page$/) do
  visit signin_path
end

Given(/^the user has an account$/) do
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

When(/^the user submits valid signin information$/) do
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

Then(/^he should see his profile page$/) do
  expect(page).to have_title("My Dashboard")
end

Then(/^he should see a signout link$/) do
  expect(page).to have_link('Sign out', href: signout_path)
end

When(/^he submits invalid signin information$/) do
  click_button "Sign in"
end

Then(/^he should see an error message$/) do
  expect(page).to have_selector('div.alert.alert-danger')
end

Given(/^I am logged in$/) do
  visit signin_path
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

When(/^I click log out$/) do
  click_link "Sign out"
end

Then(/^I should be on the home page$/) do
  expect(page).to have_title("Home")
end

Then(/^I should see the link to sign in$/) do
  expect(page).to have_link('Sign in', href: signin_path)
end