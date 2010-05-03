class Country < ActiveRecord::Base
  validates_presence_of :country, :abbreviation
  validates_uniqueness_of :country, :abbreviation

  has_many :sessions
end
