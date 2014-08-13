class Category < ActiveRecord::Base
  attr_accessible :name, :sub_categories_attributes
  validates :name, presence: true

  has_many :sub_categories, :dependent => :destroy
  accepts_nested_attributes_for :sub_categories, :allow_destroy => true

  has_many :questions, through: :sub_categories
end
