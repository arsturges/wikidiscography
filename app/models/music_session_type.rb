class MusicSessionType < ActiveRecord::Base
  validates_presence_of :music_session_type
  validates_uniqueness_of :music_session_type

  has_many :music_sessions
end
