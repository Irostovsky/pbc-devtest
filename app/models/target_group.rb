class TargetGroup < ActiveRecord::Base

  belongs_to :panel_provider

  has_closure_tree
  validates_presence_of :name

  before_save :clean_provider_for_child

  private

  def clean_provider_for_child
    self.panel_provider_id = nil if self.parent_id
  end
end
