class Question < ActiveRecord::Base
  attr_accessible :answer_a, :answer_b, :answer_c, :answer_d, :correct_answer, :category, :difficulty, :question
end
