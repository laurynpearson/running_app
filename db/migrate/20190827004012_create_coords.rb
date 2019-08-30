class CreateCoords < ActiveRecord::Migration[6.0]
  def change
    create_table :coords do |t|
      t.float :longitude
      t.float :latitude
      t.integer :route_id
      t.timestamps
    end
  end
end
