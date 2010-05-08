class Label < ActiveRecord::Base
  validates_presence_of :label, :country_id
  validates_numericality_of :country_id
  validates_uniqueness_of :label

  belongs_to :country
end
