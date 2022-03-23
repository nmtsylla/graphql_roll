class Roll < ApplicationRecord
  has_many :dices
  accepts_nested_attributes_for :dices
end
