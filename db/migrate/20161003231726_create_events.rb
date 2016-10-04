class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.attachment :logo
      t.boolean :brief
      t.boolean :perfil
      t.boolean :case
      t.string :name
      t.string :event_url
      t.boolean :unify

      t.timestamps null: false
    end
  end
end
