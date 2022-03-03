#if object does not have this already, I am borrowing it from active_support.
# I am a very big fan of activesupports instance_values method, but do not want to require nor include the entire
# library just for this one method.
module Axlsx
  module ObjectWithInstanceValues
    refine Object do
      def instance_values
        Hash[instance_variables.map { |name| [name.to_s[1..-1], instance_variable_get(name)] }]
      end
    end
  end
end
