class Contact < ApplicationRecord
  validates :name, length: { in: 1..8 }               
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: true, format: { with: VALID_EMAIL_REGEX }        
  validates :content, length: { in: 1..150 }
                      
end
