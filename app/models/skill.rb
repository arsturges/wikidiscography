class Skill < ActiveRecord::Base
  validates_presence_of :skill, :abbreviation, :sort
  validates_uniqueness_of :skill, :abbreviation, :sort
  validates_numericality_of :sort
  
  has_many :artists
end
