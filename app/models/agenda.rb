class Agenda < ApplicationRecord

  belongs_to :users
  has_many :sales
end
