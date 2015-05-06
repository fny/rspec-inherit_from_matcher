require 'spec_helper'

Parent = Class.new
Child = Class.new(Parent)
Rock = Class.new

def expect_rspec_failure(message_or_pattern)
  begin
    yield
  rescue RSpec::Expectations::ExpectationNotMetError => e
    case message_or_pattern
    when Regexp
      expect(e.message).to match(message_or_pattern)
    else
      expect(e.message).to eq(message_or_pattern)
    end
  end
end

RSpec.describe "inherit from matcher" do
  describe "positive check" do
    it "works when the child inherits from the given parent" do
      expect(Child).to inherit_from(Parent)
    end
    it "fails when the child does not inherit from the given parent" do
      expect_rspec_failure(/Expected Rock to inherit from Parent\. Ancestors: \[Rock.*\]/) do
        expect(Rock).to inherit_from(Parent)
      end
    end
  end

  describe "negative check" do
    it "works when the child does not inherit from the given parent " do
      expect(Parent).not_to inherit_from(Child)
      expect(Rock).not_to inherit_from(Parent)
    end
    it "fails when the child inherits from the given parent" do
      expect_rspec_failure("Expected Child not to inherit from Parent") do
        expect(Child).not_to inherit_from(Parent)
      end
    end
  end
end