class State < ActiveRecord::Base
  validates_presence_of :state, :abbreviation
  validates_uniqueness_of :state, :abbreviation

  has_many :music_sessions
end
