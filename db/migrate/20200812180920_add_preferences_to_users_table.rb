class AddPreferencesToUsersTable < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :programming_preferences, :string
  end
end
