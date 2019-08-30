class AddFeaturesToCoords < ActiveRecord::Migration[6.0]
  def change
    add_column :route_coords, :features, :string, array: true, default:[]
  end
end
