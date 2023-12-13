class Recipe < ApplicationRecord
    VALID_CATEGORIES = ['Category1', 'Category2', 'Category3'].freeze
    validates :category, inclusion: { in: VALID_CATEGORIES }
  end
  