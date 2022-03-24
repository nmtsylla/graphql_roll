module Mutations
  class CreateRoll < Mutations::BaseMutation
    argument :dices, Types::Input::DicesInputType, required: true
    field :roll, Types::RollType, null: false

    def resolve(dices:)
      results = Hash Resolvers::RollTheDices.run(dices)

      begin
        roll = Roll.create!(results)
        { roll: roll }
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
          " #{e.record.errors.full_messages.join(', ')}")
      end
    end
  end
end