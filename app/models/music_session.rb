class MusicSession < ActiveRecord::Base
  validates_presence_of :music_session_date, :country_id
  validates_numericality_of :country_id#, :state_id, :music_session_type_id

  belongs_to :country
  belongs_to :state
  belongs_to :music_session_type

  has_many :performances
end
