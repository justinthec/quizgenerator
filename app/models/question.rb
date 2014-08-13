class Question < ActiveRecord::Base
  attr_accessible :answer_a, :answer_b, :answer_c, :answer_d, :correct_answer, :category_id, :sub_category_id, :difficulty, :question
  validates :question, presence: true
  validates :answer_a, presence: true
  validates :answer_b, presence: true
  validates :answer_c, presence: true
  validates :answer_d, presence: true
  validates :correct_answer, presence: true
  has_and_belongs_to_many :quizzes
  belongs_to :sub_category
end
