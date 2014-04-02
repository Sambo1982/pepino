Given(/^I have products titled (.+)$/) do |names|
  names.split(', ').each do |name|
  	Product.create!(:name => name)
  end
end

When(/^I go to the list of products$/) do
  visit products_path
end

Then(/^I should see "(.*?)"$/) do |arg1|
   page.should have_content(arg1)
end

Given(/^I have no products$/) do
  Product.delete_all
end

Given(/^I am on the list of products$/) do
  visit products_path
end

When(/^I follow New Product$/) do 
  visit new_product_path
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, :with => arg2
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button arg1
end