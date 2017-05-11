class CreateTotalbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :totalbooks do |t|
      t.string :isbn
      t.boolean :issue

      t.timestamps
    end
  end
end
