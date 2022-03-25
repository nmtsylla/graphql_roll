require 'rails_helper'

RSpec.describe Mutations::CreateRoll, type: :graphql do
  let(:mutation) do
    <<~GQL
    mutation createRoll($dices: DicesInput!) {
      createRoll(input: {dices: $dices}) {
        roll {
          id
          total
          rolledAt
          dices {
            value,
            dice
          }
        }
      }
    }
    GQL
  end

    it 'is successful return roll with list of dices' do
      result = execute_graphql(
        mutation,
        variables: { "dices": "2d2" },
      )
      expect(result['data']['createRoll']['roll']['id']).to eq "1"
      expect(result['data']['createRoll']['roll']['dices'].length).to eq 2
    end


end