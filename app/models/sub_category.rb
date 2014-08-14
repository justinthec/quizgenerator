class SubCategory < ActiveRecord::Base
  attr_accessible :name, :color
  validates :name, presence: true
  validates :color, presence: true
  belongs_to :category
  has_many :questions
end
