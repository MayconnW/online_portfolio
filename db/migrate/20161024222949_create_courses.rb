class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :institute
      t.date :begin_date
      t.date :end_date
      t.boolean :unfinished

      t.timestamps null: false
    end
  end
end
