class PerformanceType < ActiveRecord::Base
  validates_presence_of :performance_type
  validates_uniqueness_of :performance_type

  has_many :performances
end
