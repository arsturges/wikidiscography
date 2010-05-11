require 'test_helper'

class PerformanceTypeTest < ActiveSupport::TestCase
  
  test "validates correctly" do
    p = PerformanceType.new
    assert !p.save
    p.performance_type = "New Type"
    assert p.save

    d = PerformanceType.new
    d.performance_type = "New Type"
    assert !d.save
    d.performance_type = "different type"
    assert d.save
  end
end
