class Drifvare < ActiveRecord::Migration
  def change
    create_table :drifvare do |t|
      t.text :name
      t.text :email
      t.text :telephone
      t.text :address
      t.text :postal_code
      t.text :city
      t.text :country

      t.timestamps
    end
  end
end
