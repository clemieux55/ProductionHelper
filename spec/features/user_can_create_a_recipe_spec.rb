require 'spec_helper'

feature 'Creating a recipe' do 
	scenario 'The user can create a recipe with a title' do 
		visit root_path
		fill_in 'recipe_title', with: "Sausage"
		click_on 'Create'
		click_on 'Recipes'
		expect(page).to have_content "Sausage"
	end
end