class SubCategory < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true
  belongs_to :category
  has_many :questions
end
