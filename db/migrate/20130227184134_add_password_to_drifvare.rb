class AddPasswordToDrifvare < ActiveRecord::Migration
  def change
    change_table :drifvare do |t|
      t.string :password_digest
    end
  end
end
