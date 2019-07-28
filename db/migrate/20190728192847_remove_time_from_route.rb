class RemoveTimeFromRoute < ActiveRecord::Migration[6.0]
  def change
    remove_column :routes, :time, :time
  end
end
