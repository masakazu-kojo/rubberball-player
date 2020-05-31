class CreateNewplayers < ActiveRecord::Migration[5.2]
  def change
    create_table :newplayers do |t|
      t.text :content

      t.timestamps
    end
  end
end
