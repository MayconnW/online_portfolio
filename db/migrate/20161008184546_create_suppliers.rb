class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.references :user, index: true, foreign_key: true
      t.string :playlist
      t.attachment :logo
      t.attachment :case
      t.attachment :brief

      t.timestamps null: false
    end
  end
end
