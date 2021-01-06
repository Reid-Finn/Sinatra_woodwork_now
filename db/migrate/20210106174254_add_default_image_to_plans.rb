class AddDefaultImageToPlans < ActiveRecord::Migration
  def change
    change_column_default :plans, :image, 'https://contractorsinsurance.org/wp-content/uploads/2018/05/history-of-carpentryTh00000000000.jpg'
  end
end
