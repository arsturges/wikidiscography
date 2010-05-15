class Release < ActiveRecord::Base
  validates_presence_of :title, :sort_title, :label_id, :catalogue_number, :medium_id, :volumes
  validates_numericality_of :label_id, :medium_id, :volumes

  belongs_to :label
  belongs_to :medium
end
