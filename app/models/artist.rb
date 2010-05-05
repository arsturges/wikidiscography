class Artist < ActiveRecord::Base
  validates_presence_of :last, :display_name, :skill_id
  validates_numericality_of :skill_id

  belongs_to :skill
end
