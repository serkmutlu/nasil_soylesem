class RemoveColumnFromChoice < ActiveRecord::Migration
  def change
    remove_column :choices, :userip
  end
end
