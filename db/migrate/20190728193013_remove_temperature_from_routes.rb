class RemoveTemperatureFromRoutes < ActiveRecord::Migration[6.0]
  def change
    remove_column :routes, :temperature, :decimal
  end
end
