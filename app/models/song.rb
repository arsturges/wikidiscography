class Song < ActiveRecord::Base
  validates_presence_of :title, :song_form_id
  validates_numericality_of :song_form_id

  belongs_to :song_form

  cattr_reader :per_page
  @@per_page = 150
end
