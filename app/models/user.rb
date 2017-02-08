class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :orders, dependent: :destroy

  def admin?
    admin
  end

  def admin!
    update(admin: true)
  end
end
