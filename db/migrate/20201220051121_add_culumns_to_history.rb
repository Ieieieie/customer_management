class AddCulumnsToHistory < ActiveRecord::Migration[5.2]
  def change
    add_column :histories, :postcode, :integer
    add_column :histories, :prefecture_code, :integer
    add_column :histories, :address_city, :string
    add_column :histories, :address_street, :string
    add_column :histories, :address_building, :string
  end
end
