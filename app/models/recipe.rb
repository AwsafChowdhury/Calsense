class Recipe < ApplicationRecord
    enum category: [:normal, :vegetarian, :vegan]
    enum meal_category: [:breakfast, :lunch, :snacks, :dinner]
  end
  