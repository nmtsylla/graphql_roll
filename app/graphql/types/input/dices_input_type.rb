module Types
  module Input
    class DicesInputType < Types::BaseScalar

      def self.coerce_input(input_value, context)
        re = Regexp.new('^((\d+)(d|D)(\d+)([+]*))+').freeze

        if input_value.is_a?(String) and re =~ input_value
           input_value
        else
          raise GraphQL::CoercionError, "#{input_value.inspect} is not a valid dices"
        end
      end

      def self.coerce_result(ruby_value, context)
        ruby_value
      end
    end
  end
end