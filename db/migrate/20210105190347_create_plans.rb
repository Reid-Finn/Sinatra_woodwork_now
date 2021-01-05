class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plan do |t|
      t.string :title
      t.text :instructions
      t.string :image
      t.integer :user_id
  end
end
end
