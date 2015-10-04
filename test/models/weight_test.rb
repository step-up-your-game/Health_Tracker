require 'test_helper'

class WeightTest < ActiveSupport::TestCase

  test "class exists" do
    assert Weight
  end

  test "should not create weight" do
    w=Weight.new(weight: 122)
    w.save
    x=Weight.new(weight: 125)
    refute x.save
  end

end
