class CreateQuestionsQuizzesTable < ActiveRecord::Migration
  def self.up
    create_table :questions_quizzes, :id => false do |t|
      t.references :question
      t.references :quiz
    end
    add_index :questions_quizzes, :quiz_id
    add_index :questions_quizzes, :question_id
  end
  def self.down
  	remove_table :questions_quizzes
  end
end

