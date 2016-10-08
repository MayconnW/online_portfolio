class CreateActivityBranches < ActiveRecord::Migration
  def change
    create_table :activity_branches do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
