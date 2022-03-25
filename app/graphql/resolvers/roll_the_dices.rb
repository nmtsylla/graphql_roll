module Resolvers
  class RollTheDices
  
    def self.run(dices)
      re = Regexp.new('^((\d+)(d|D)(\d+)([+]*))+').freeze
      raise  'ValidationError: check input'  unless re =~ dices
      if dices.include?('+')
        list_dices = dices.split('+').map{|d| d.split('d')}   
      else 
        list_dices = [dices.downcase.split('d')]
      end
      total = 0
      rolls = []
      list_dices.each do |dice|
        dices_count = dice[0]
        max_value = dice[1].to_i
        dices_count.to_i.times do |n|
          value = 1 + rand(max_value-1)
          total += value
          rolls << {face: "d#{max_value}", value: value}
        end
      end
      
      {total: total, dices_attributes: rolls}
    end
  end
end