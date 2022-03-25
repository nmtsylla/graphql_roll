require 'rails_helper'


RSpec.describe Resolvers::RollTheDices do
  it "should raise errors if dices doesnt meet format " do
    expect{Resolvers::RollTheDices.run('26dd2')}.to raise_exception(RuntimeError, 'ValidationError: check input')
  end

  it "dices array lenght should be dices count " do
    run = Resolvers::RollTheDices.run('2d6')
    expect(run[:dices_attributes].length).to  eq(2)

    sec_run = Resolvers::RollTheDices.run('4d20')
    expect(sec_run[:dices_attributes].length).to  eq(4)

    third_run = Resolvers::RollTheDices.run('4d20+2d5')
    expect(third_run[:dices_attributes].length).to  eq(6)
  end

  it "should contain total attributes as integer " do
    run = Resolvers::RollTheDices.run('26d12')
    expect(run[:total]).to be_instance_of(Integer)
  end

end