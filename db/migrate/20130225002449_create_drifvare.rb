class CreateDrifvare < ActiveRecord::Migration
  def change
    create_table :drifvare do |t|
      t.text :namn
      t.text :adress
      t.text :email

      t.timestamps
    end
  end
end
