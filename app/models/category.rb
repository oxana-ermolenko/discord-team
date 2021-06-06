class Category < ApplicationRecord
  belongs_to :user
  has_many :portfolio_categories
  has_many :portfolios, through: :portfolio_categories
  
end
