class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.binary :image
      t.string :title
      t.string :genre
      t.integer :price
      t.timestamps
    end
  end
end
