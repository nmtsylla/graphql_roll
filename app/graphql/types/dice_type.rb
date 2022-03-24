# frozen_string_literal: true

module Types
  class DiceType < Types::BaseObject
    field :value, Integer
    field :dice, String, hash_key: 'face'
  end
end
