class AddImgToNewplayers < ActiveRecord::Migration[5.2]
  def change
    add_column :newplayers, :img, :string
  end
end
