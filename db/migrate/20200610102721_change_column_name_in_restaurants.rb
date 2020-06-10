class ChangeColumnNameInRestaurants < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :phonenumber, :phone_number
  end
end
