class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: ["Chinese", "Italian", "Japanese", "French", "Belgian"] }
  has_many :reviews, dependent: :destroy
end
