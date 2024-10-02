class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :tasks
  has_many :categories
  validates :username, presence: true, uniqueness: true
  # ... other associations and validations ...
end
