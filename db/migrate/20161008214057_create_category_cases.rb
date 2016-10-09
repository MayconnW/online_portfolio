class CreateCategoryCases < ActiveRecord::Migration
  def change
    create_table :category_cases do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
