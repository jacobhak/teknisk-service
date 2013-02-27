class CreateDrifvare < ActiveRecord::Migration
  def change
    create_table :drifvare do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :country
      t.boolean :admin

      t.timestamps
    end
  end
end
