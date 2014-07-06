require 'spec_helper'

describe "Recipe" do 
	it 'Only saves a recipe if it has a title' do 
		recipe = Recipe.new
		recipe.title = "Sausage"
		expect(recipe.save).to be true
	end
end