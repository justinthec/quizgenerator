class AddColorsToSubCategories < ActiveRecord::Migration
  def change
  	add_column :sub_categories, :color, :string
  end
end
