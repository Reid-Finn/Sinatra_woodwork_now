class CreatePlanMaterials < ActiveRecord::Migration
  def change
    create_table :plans_materials do |t|
      t.integer :plan_id
      t.integer :material_id
    end
  end
end
