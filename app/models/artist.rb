class Artist < ActiveRecord::Base
  validates :last, :presence => true
  validates :display_name, :presence => true
  validates :skill_id, :presence => true 
  validates_numericality_of :skill_id, :only_integer => true

  belongs_to :skill

  cattr_reader :per_page
  @@per_page = 150
end
