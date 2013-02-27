class CreateDrifverier < ActiveRecord::Migration
  def change
    create_table :drifverier do |t|
      t.integer :year
      t.integer :ofverdrif_id
      t.integer :direktifdrif_id
      t.integer :indrif_id
      t.integer :tidsfordrif_id
      t.string :skylt
      t.string :archzero

      t.timestamps
    end
  end
end
