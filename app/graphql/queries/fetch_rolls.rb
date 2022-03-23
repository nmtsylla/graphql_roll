module Queries
  class FetchRolls < Queries::BaseQuery
    type [Types::RollType], null: false

    def resolve
      Roll.all
    end
  end
end