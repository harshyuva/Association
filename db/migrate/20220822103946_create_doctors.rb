class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :dr_name
      t.integer :dr_num

      t.timestamps
    end
  end
end
