class Createrecipe < ActiveRecord::Migration
  def change
  	create_table :recipes do |t|
  		t.string :title, null: false

  	end
  end
end
