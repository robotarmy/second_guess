class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :creator_user

      t.timestamps
    end
    add_index :products, :creator_user_id
  end
end
