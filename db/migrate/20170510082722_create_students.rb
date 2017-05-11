class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students , id: false ,:primary_key => "sid" do |t|
      t.string :sid
      t.text :name
      t.integer :year
      t.string :branch
      t.date :dob

      t.timestamps
    end
  end
end
