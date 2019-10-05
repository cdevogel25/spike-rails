class AddOwnerToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :owner, :string
  end
end
