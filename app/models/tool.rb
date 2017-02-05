class Tool < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :clients, through: :orders
  has_many :repairs, through: :orders

  validates :name, presence: true
  validates :brand, presence: true
  validates :tool_type, presence: true
end
