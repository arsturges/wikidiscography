class Performance < ActiveRecord::Base
  validates_presence_of :session_id, :song_id, :performance_type_id
  validates_numericality_of :session_id, :song_id, :performance_type_id

  belongs_to :session
  belongs_to :song
  belongs_to :performance_type

  cattr_reader :per_page
  @@per_page = 150
end
