class AddRememberTokenToDrifvare < ActiveRecord::Migration
  def change
    add_column :drifvare, :remember_token, :string
    add_index :drifvare, :remember_token
  end
end
