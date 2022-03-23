class Roll < ApplicationRecord
  has_many :dices
  accepts_nested_attributes_for :dices, reject_if: proc { |attributes| attributes['value'].blank? or attributes['face'].blank? }
end
