class RemoveFeatures < ActiveRecord::Migration[6.0]
  def change
    remove_column :route_coords, :features, :string, array: true, default:[]
  end
end
