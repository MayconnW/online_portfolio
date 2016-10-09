class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.boolean :hide

      t.timestamps null: false
    end
  end
end
