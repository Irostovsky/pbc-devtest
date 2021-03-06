class Country < ActiveRecord::Base
  belongs_to :panel_provider
  has_many :location_groups

  validates_uniqueness_of :code
  validates_presence_of :code
end
