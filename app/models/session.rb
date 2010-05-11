class Session < ActiveRecord::Base
  validates_presence_of :session_date, :country_id
  validates_numericality_of :country_id#, :state_id, :session_type_id

  belongs_to :country
  belongs_to :state
  belongs_to :session_type

  has_many :performances
end
