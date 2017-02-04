class Order < ApplicationRecord
  belongs_to :tool
  belongs_to :repair
  belongs_to :client
end
