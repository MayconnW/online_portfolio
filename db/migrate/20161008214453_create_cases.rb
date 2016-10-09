class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.references :category_case, index: true, foreign_key: true
      t.attachment :picture
      t.string :description
      t.references :supplier, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
