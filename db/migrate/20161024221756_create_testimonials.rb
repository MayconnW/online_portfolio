class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.integer :owner_user_id, :references => "user", index: true, foreign_key: true
      t.integer :comment_user_id, :references => "user", index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end

  