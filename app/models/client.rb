class Client < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :tools, through: :orders
  has_many :repairs, through: :orders

  validates :name, presence: true
  validates :adress, presence: true
  validates :phone_number, presence: true

  def purchase_sum
    repairs.sum(:price)
  end

  def tools_count
    tools.count(:id)
  end
end
