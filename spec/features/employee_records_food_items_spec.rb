require 'spec_helper'

feature 'Food service employee takes inventory', %Q{
  As a food service employee
  I want to receive inventory
  So that it can be recorded that we have food items
  } do
 #
 # Acceptance Criteria:
 #
 # * I must specifiy a title, description, and quantity of the food items
 # * If I do not specify the required information, I am prompted to fix errors 
 #   and to resubmit
 # * If I specify the required information, my inventory entry is recorded   

scenario 'employee can view inventory' do
  visit new_inventory_path
  fill_in 'Title', with: 'Wheat Thins'
  fill_in 'Description', with: 'Original'
  fill_in 'Quantity', with: 250
  click_button 'Create Inventory'
  expect(page).to have_content('Inventory created successfully. YUM!')
end

end