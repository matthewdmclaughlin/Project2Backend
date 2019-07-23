class CreateDvds < ActiveRecord::Migration[5.2]
  def change
    create_table :dvds do |t|
      t.string :title
      t.integer :year
      t.string :starring
      t.string :synopsis
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
