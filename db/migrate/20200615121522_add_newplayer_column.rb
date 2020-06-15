class AddNewplayerColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :newplayers, :position, :string
    add_column :newplayers, :from_team, :string
    add_column :newplayers, :before_team, :string
    add_column :newplayers, :player, :string
  end
end
