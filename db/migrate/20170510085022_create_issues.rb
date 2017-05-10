class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.string :sid
      t.integer :totalbook_id
      t.date :issue_date
      t.date :return_date

      t.timestamps
    end
  end
end
