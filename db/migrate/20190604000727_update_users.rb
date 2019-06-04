class UpdateUsers < ActiveRecord::Migration[5.2]
  def change

    rename_column :users, :name, :user_name

    remove_column :users, :email

  end
end
