class Sale < ApplicationRecord
  belongs_to :user
  has_many :agendas
end
