class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.attachment :logo
      t.string :link_app
      t.string :link_github
      t.string :highlight

      t.timestamps null: false
    end
  end
end
