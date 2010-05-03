class SessionType < ActiveRecord::Base
  validates_presence_of :session_type
  validates_uniqueness_of :session_type

  has_many :sessions
end
