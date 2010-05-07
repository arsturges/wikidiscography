class Song < ActiveRecord::Base
  validates_presence_of :title, :song_form_id
  validates_numericality_of :song_form_id

  belongs_to :song_form
end
