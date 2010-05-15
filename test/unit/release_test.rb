require 'test_helper'

class ReleaseTest < ActiveSupport::TestCase
 
  test "validations should work" do
    r = Factory(:release)
    assert r.save
    assert true
  end
end
