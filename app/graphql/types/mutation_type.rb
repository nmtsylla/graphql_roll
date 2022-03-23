module Types
  class MutationType < Types::BaseObject
    field :create_roll, mutation: Mutations::CreateRoll 
  end
end
