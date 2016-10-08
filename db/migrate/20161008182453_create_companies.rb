class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :state
      t.string :city
      t.attachment :logo

      t.timestamps null: false
    end
  end
end
