class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :image
      t.text :synopsis
      t.references :destination, foreign_key: true

      t.timestamps
    end
  end
end
