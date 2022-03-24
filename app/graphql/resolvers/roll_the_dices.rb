module Resolvers
  class RollTheDices
    def self.run(dices)
      dice = dices.downcase.split('d')
      dices_count = dice[0]
      max_value = dice[1].to_i
      total = 0
      rolls = []
      dices_count.to_i.times do |n|
        value = 1 + rand(max_value-1)
        total += value
        rolls << {face: "d#{max_value}", value: value}
      end
      {total: total, dices_attributes: rolls}
    end
  end
end