class AddUserIdToNewplayers < ActiveRecord::Migration[5.2]
  def change
    add_column :newplayers, :user_id, :integer
  end
end
