class Tool < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :clients, through: :orders
  has_many :repairs, through: :orders

  validates :name, presence: true
  validates :brand, presence: true
  validates :tool_type, presence: true

  def purchase_sum
    repairs.sum(:price)
  end

  def clients_count
    clients.count(:id)
  end
end
