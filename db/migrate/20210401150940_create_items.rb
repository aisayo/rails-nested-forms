class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :count
      t.integer :store_id
      t.timestamps
    end
  end
end
