class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
