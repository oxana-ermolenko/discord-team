class PortfolioCategory < ApplicationRecord
  belongs_to :category
  belongs_to :portfolio
end
