class Recipe < ApplicationRecord
<<<<<<< HEAD
    VALID_CATEGORIES = ['Category1', 'Category2', 'Category3'].freeze
    validates :category, inclusion: { in: VALID_CATEGORIES }
=======
    enum category: [:normal, :vegetarian, :vegan]
    enum meal_category: [:breakfast, :lunch, :snacks, :dinner]
>>>>>>> 11030fc831fa29faea48875aadc936640e718551
  end
  