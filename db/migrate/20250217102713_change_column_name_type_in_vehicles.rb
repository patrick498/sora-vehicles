class ChangeColumnNameTypeInVehicles < ActiveRecord::Migration[7.1]
  def change
    rename_column :vehicles, :type, :vehicle_type
  end
end
