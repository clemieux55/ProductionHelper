require 'spec_helper'

feature "User can view the list of recipes" do 
	it 'Allows the user to click on a link to view a list of recipes' do 
		Recipe.create(title: "Italian Sausage")
		visit recipes_path
		click_on "Recipes"
		expect(page).to have_content "Italian Sausage"
	end
end