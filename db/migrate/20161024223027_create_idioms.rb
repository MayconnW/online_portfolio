class CreateIdioms < ActiveRecord::Migration
  def change
    create_table :idioms do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.integer :level

      t.timestamps null: false
    end
  end
end
