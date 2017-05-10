class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books ,id: false, primary_key: :isbn do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.string :subject
      t.string :publication
      t.integer :copies
      t.integer :available

      t.timestamps
    end
  end
end
