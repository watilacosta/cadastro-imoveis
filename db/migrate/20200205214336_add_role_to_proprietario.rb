class AddRoleToProprietario < ActiveRecord::Migration[5.2]
  def change
    add_column :proprietarios, :role, :integer
  end
end
