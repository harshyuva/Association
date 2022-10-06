class CreateSupplierHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :supplier_histories do |t|
      t.references :assembly, null: false, foreign_key: true
      t.references :part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
