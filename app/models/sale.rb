class Sale < ApplicationRecord
  belongs_to :users
  has_many :agendas
end
