class CreateTargetGroups < ActiveRecord::Migration
  def change
    create_table :target_groups do |t|
      t.string :name
      t.integer :parent_id
      t.belongs_to :panel_provider, index: true
      t.timestamps null: false
    end
  end
end
