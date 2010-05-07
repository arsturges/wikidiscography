class SongForm < ActiveRecord::Base
  validates_presence_of :song_form
  validates_uniqueness_of :song_form

  has_many :songs
end
