class LocationGroup < ActiveRecord::Base
  belongs_to :panel_provider
  belongs_to :country
  has_and_belongs_to_many :locations

  validates_presence_of :name
  validates_uniqueness_of :name

end
