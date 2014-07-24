class ChangeQuestionsToMultipleChoice < ActiveRecord::Migration
  def change
  	add_column :questions, :answer_a, :text
  	add_column :questions, :answer_b, :text
  	add_column :questions, :answer_c, :text
  	add_column :questions, :answer_d, :text
  	remove_column :questions, :question, :string
  	add_column :questions, :question, :text
  	rename_column :questions, :answer, :correct_answer
  	add_column :questions, :category, :string
  end
end
