require 'spec_helper'

feature 'Creating a recipe' do 
	it 'The user can create a recipe with a title' do 
		number_of_recipes = Recipe.count
		visit new_recipe_path
		fill_in 'recipe_title', with: "Sausage"
		click_on 'Create'
		expect(Recipe.count).to eql (number_of_recipes + 1)
	end
end