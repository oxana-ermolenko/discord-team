class Portfolio < ApplicationRecord
  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: {minimum: 5, maximum: 5000}

  belongs_to :user
  has_many :portfolio_categories
  has_many :categories, through: :portfolio_categories
end