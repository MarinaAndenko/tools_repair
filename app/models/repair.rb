class Repair < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :tools, through: :orders
  has_many :clients, through: :orders

  validates :name, presence: true
  validates :duration, presence: true
  validates :price, presence: true, numericality: true
end
