class ChangeAddressInVan < ActiveRecord::Migration[6.0]
  def change
    rename_column :vans, :location_address, :address
  end
end
