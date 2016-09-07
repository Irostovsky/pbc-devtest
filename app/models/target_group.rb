class TargetGroup < ActiveRecord::Base

  belongs_to :panel_provider

  belongs_to :parent, class_name: "TargetGroup"
  has_many :children, class_name: "TargetGroup", foreign_key: "parent_id"
  validates_presence_of :name

  before_save :clean_provider_for_child

  private

  def clean_provider_for_child
    self.panel_provider_id = nil if self.parent_id
  end
end
