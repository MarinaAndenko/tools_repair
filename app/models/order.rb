class Order < ApplicationRecord
  belongs_to :client
  belongs_to :tool
  belongs_to :repair
  belongs_to :user

  validates :client, presence: true
  validates :tool, presence: true
  validates :repair, presence: true
  validates :start_date, presence: true

  def finish_date
    start_date + repair.duration
  end
end
