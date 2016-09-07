class Location < ActiveRecord::Base

  has_and_belongs_to_many :location_groups
  validates_presence_of :name

end
