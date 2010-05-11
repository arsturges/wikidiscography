class Country < ActiveRecord::Base
  validates_presence_of :country, :abbreviation
  validates_uniqueness_of :country, :abbreviation

  has_many :sessions
  has_many :labels

  cattr_reader :per_page
  @@per_page = 150
end
