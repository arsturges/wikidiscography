require 'test_helper'

class SongFormTest < ActiveSupport::TestCase
 
  test "validations should pass" do
    a = SongForm.new
    a.song_form = "new song form"
    assert a.save
    s=SongForm.new
    assert !s.save

    s.song_form = "new song form"
    assert !s.save
    s.song_form = "update title"
    assert s.save
  end
end
