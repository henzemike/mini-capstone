class AddSupplierIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :Supplier_id, :integer
  end
end
