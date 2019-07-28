class UpdateDurationType < ActiveRecord::Migration[6.0]
  def change
    change_column :routes, :duration, :string
  end
end
