# frozen_string_literal: true

module Types
  class RollType < Types::BaseObject
    field :id, ID, null: false
    field :total, Float
    field :rolled_at, GraphQL::Types::ISO8601DateTime
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :dices, [Types::DiceType], null: false
  end
end
