require 'rails_helper'

RSpec.describe TrustTestSchema do
  it 'renders the full schema' do
    schema = GraphQL::Schema::Printer.print_schema(TrustTestSchema)
    expect(schema).to match_snapshot('schema')
  end
end
