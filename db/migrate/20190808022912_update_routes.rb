class UpdateRoutes < ActiveRecord::Migration[6.0]
  def change
    add_column :routes, :state, :string
    add_column :routes, :country, :string
    rename_column :routes, :location, :city
    rename_column :routes, :description, :name
  end
end
