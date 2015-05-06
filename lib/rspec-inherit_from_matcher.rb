require 'rspec'

RSpec::Matchers.define :inherit_from do |superclass|
  match do |klass|
    klass.ancestors.include?(superclass)
  end

  failure_message do |klass|
    "Expected #{klass} to inherit from #{superclass}. " \
    "Ancestors: #{klass.ancestors}"
  end

  failure_message_when_negated do |klass|
    "Expected #{klass} not to inherit from #{superclass}"
  end
end
