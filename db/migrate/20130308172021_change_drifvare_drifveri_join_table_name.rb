class ChangeDrifvareDrifveriJoinTableName < ActiveRecord::Migration
  def change
    drop_table :drifvare_drifveri
    create_table :drifvare_drifverier, :id => false do |t|
      t.integer :drifvare_id
      t.integer :drifveri_id
    end
  end
end
