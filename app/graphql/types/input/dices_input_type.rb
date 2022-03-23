module Types
  module Input
    class DicesInputType < Types::BaseScalar

      def self.coerce_input(input_value, context)
        re = Regexp.new('(-?)(\d*)(d|D)(\d*)').freeze
        
        if input_value.is_a?(String) and re =~ input_value
           dice = input_value.split('d')
          [{'value':  dice[0].to_i, 'face': "d"+dice[1]}]
        else
          raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid dices"
        end
      end

      def self.coerce_result(ruby_value, context)
        dice = ruby_value.split('d')
        [{'value': int(dice[0]), 'face': "d"+dice[1]}]
      end
    end
  end
end