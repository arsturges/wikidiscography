class Medium < ActiveRecord::Base
  validates_presence_of :medium
  validates_uniqueness_of :medium

  has_many :releases
end
