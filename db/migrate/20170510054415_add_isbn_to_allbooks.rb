class AddIsbnToAllbooks < ActiveRecord::Migration[5.0]
  def change
  	add_column :allbooks ,:isbn ,:string
  end
end
