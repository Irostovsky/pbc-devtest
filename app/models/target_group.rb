class TargetGroup < ActiveRecord::Base

  belongs_to :panel_provider
  validates_presence_of :name


end
