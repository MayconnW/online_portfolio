class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.references :user, index: true, foreign_key: true
      t.string :role
      t.string :company
      t.date :begin_date
      t.date :end_date
      t.boolean :actual
      t.text :description

      t.timestamps null: false
    end
  end
end
