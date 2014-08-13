class ImplementCategories < ActiveRecord::Migration
  def up
  	add_column :sub_categories, :category_id, :integer
  	add_column :questions, :sub_category_id, :integer
  	add_column :questions, :category_id, :integer
  end

  def down
  	remove_column :sub_categories, :category_id
  	remove_column :questions, :sub_category_id
  	remove_column :questions, :category_id
  end
end
