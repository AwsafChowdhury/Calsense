class AdminUser < ApplicationRecord
    has_secure_password
  
    # Add necessary attributes
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
  end
  