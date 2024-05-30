class CreateCatlists < ActiveRecord::Migration[7.1]
  def change
    create_table :catlists do |t|
      t.string :name, null: false
      t.string :path, null: false
      t.text :description
      t.references :country

      t.timestamps
    end
    create_table :cats do |t|
      t.string :name, null: false
      t.string :sender_name
      t.text :description
      t.references :catlist
      t.timestamps
    end
  end
end