require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "validations should pass" do
    a = Song.new
    a.title = "new title"
    a.song_form_id = 1
    assert a.save
    s = Song.new
    assert !s.save
    s.title = "new title" #not unique, and no song_form_id
    assert !s.save
    s.song_form_id = 1
    assert !s.save #still not inuqe title
    s.title = "updated tile"
    assert s.save
    end
end
