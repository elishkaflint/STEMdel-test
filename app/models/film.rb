class Film < ApplicationRecord

  # sets up database relationship for one user has many posts
  has_many :characters, dependent: :destroy

end
