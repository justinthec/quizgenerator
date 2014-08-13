class RemoveCategoriesFromQuestions < ActiveRecord::Migration
  def change
  	remove_column :questions, :category
  	remove_column :questions, :sub_category
  end
end
