require 'spec_helper'

feature "PagesController" do 
	it "Has a button to add a recipe to the database" do 
		visit root_path
		expect(page).to have_button "Create Recipe"
	end

	it "Has a button to view the recipes in the database" do 
		visit root_path
		expect(page).to have_button "Recipes"

	end
end