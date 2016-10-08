class CreateCios < ActiveRecord::Migration
  def change
    create_table :cios do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :nick
      t.references :company, index: true, foreign_key: true
      t.attachment :picture
      t.boolean :status

      t.timestamps null: false
    end
  end
end
