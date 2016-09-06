class PanelProvider < ActiveRecord::Base
  has_one :country
  has_many :location_groups

  validates_presence_of :code
  validates_uniqueness_of :code

end
