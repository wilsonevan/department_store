class Department < ApplicationRecord
  has_many :items

  def self.alphebetical_order
    order(:name)
  end
end
