class UpdateYearPurchasedType < ActiveRecord::Migration[6.0]
  def change
    remove_column :shoes, :year_purchased, :decimal
    add_column :shoes, :year_purchased, :string
  end
end
