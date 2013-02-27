class CreateDrifvareDrifveriJoinTable < ActiveRecord::Migration
  def change
    create_table :drifvare_drifveri, :id => false do |t|
      t.integer :drifvare_id
      t.integer :drifveri_id
    end
  end
end
